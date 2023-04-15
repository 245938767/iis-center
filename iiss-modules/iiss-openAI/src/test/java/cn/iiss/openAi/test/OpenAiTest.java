package cn.iiss.openAi.test;

import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;


@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.MOCK,classes = Appendable.class)
@AutoConfigureMockMvc
@TestPropertySource()
public class OpenAiTest {
}
