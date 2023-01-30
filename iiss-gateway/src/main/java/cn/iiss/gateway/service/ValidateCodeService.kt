package cn.iiss.gateway.service

import cn.iiss.commons.core.exception.CaptchaException
import cn.iiss.commons.core.web.domain.AjaxResult
import java.io.IOException

/**
 * 验证码处理
 *
 * @author ruoyi
 */
interface ValidateCodeService {
    /**
     * 生成验证码
     */
    @Throws(IOException::class, CaptchaException::class)
    fun createCaptcha(): AjaxResult?

    /**
     * 校验验证码
     */
    @Throws(CaptchaException::class)
    fun checkCaptcha(key: String?, value: String?)
}