package cn.iiss.gateway.service.impl

import cn.iiss.common.core.constant.CacheConstants
import cn.iiss.common.core.constant.Constants
import cn.iiss.common.core.exception.CaptchaException
import cn.iiss.common.core.utils.StringUtils
import cn.iiss.common.core.utils.sign.Base64
import cn.iiss.common.core.utils.uuid.IdUtils
import cn.iiss.common.core.web.domain.AjaxResult
import cn.iiss.common.redis.service.RedisService
import cn.iiss.gateway.config.properties.CaptchaProperties
import cn.iiss.gateway.service.ValidateCodeService
import com.google.code.kaptcha.Producer
import org.springframework.stereotype.Service
import org.springframework.util.FastByteArrayOutputStream
import java.awt.image.BufferedImage
import java.io.IOException
import java.util.concurrent.TimeUnit
import javax.annotation.Resource
import javax.imageio.ImageIO

/**
 * 验证码实现处理
 *
 * @author ruoyi
 */
@Service
open class ValidateCodeServiceImpl(
    private val captchaProperties: CaptchaProperties,
    private val redisService: RedisService,
    @Resource(name = "captchaProducer")
    private val captchaProducer: Producer,
    @Resource(name = "captchaProducerMath")
    private val captchaProducerMath: Producer
) : ValidateCodeService {

    /**
     * 生成验证码
     */
    @Throws(IOException::class, CaptchaException::class)
    override fun createCaptcha(): AjaxResult? {
        val ajax = AjaxResult.success()
        val captchaEnabled = captchaProperties!!.enabled
        ajax["captchaEnabled"] = captchaEnabled
        if (!captchaEnabled) {
            return ajax
        }

        // 保存验证码信息
        val uuid = IdUtils.simpleUUID()
        val verifyKey = CacheConstants.CAPTCHA_CODE_KEY + uuid
        var capStr: String? = null
        var code: String? = null
        var image: BufferedImage? = null
        val captchaType = captchaProperties.type
        // 生成验证码
        if ("math" == captchaType) {
            val capText = captchaProducerMath!!.createText()
            capStr = capText.substring(0, capText.lastIndexOf("@"))
            code = capText.substring(capText.lastIndexOf("@") + 1)
            image = captchaProducerMath.createImage(capStr)
        } else if ("char" == captchaType) {
            code = captchaProducer!!.createText()
            capStr = code
            image = captchaProducer.createImage(capStr)
        }
        redisService!!.setCacheObject(verifyKey, code, Constants.CAPTCHA_EXPIRATION, TimeUnit.MINUTES)
        // 转换流信息写出
        val os = FastByteArrayOutputStream()
        try {
            ImageIO.write(image, "jpg", os)
        } catch (e: IOException) {
            return AjaxResult.error(e.message)
        }
        ajax["uuid"] = uuid
        ajax["img"] = Base64.encode(os.toByteArray())
        return ajax
    }

    /**
     * 校验验证码
     */
    @Throws(CaptchaException::class)
    override fun checkCaptcha(code: String?, uuid: String?) {
        if (StringUtils.isEmpty(code)) {
            throw CaptchaException("验证码不能为空")
        }
        if (StringUtils.isEmpty(uuid)) {
            throw CaptchaException("验证码已失效")
        }
        val verifyKey = CacheConstants.CAPTCHA_CODE_KEY + uuid
        val captcha = redisService!!.getCacheObject<String>(verifyKey)
        redisService.deleteObject(verifyKey)
        if (!code.equals(captcha, ignoreCase = true)) {
            throw CaptchaException("验证码错误")
        }
    }
}