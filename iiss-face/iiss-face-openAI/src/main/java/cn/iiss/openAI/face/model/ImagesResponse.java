package cn.iiss.openAI.face.model;

import lombok.Data;

import java.util.List;

@Data
public class ImagesResponse {
    private String created;
    private List<UrlData> data;
}

@Data
class UrlData {
    private String url;
}
