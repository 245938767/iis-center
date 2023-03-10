package cn.iiss.openAI.face.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class ImagesResponse {
    private String created;
    private List<UrlData> data;
    @Data
    @AllArgsConstructor
    class UrlData {
        private String url;
    }
}

