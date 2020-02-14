package com.yy.gm.entity;

import lombok.Data;

import java.util.Date;

@Data
public class News {
    private String id;
    private String title;
    private Integer type;
    private String author;
    private String source;
    private Date operatetime = new Date();
    private String context;
    private Integer count = 0;
}
