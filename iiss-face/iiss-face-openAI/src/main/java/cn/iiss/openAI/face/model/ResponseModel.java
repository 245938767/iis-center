package cn.iiss.openAI.face.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ResponseModel {

        private String id;
        private String object;
        private long created;
        private List<Choices> choices;
        private Usage usage;


    }

