package com.yy.gm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Node {
    private String id;
    private String name;
    private String pid;
    private boolean hasChildren = true;
    private List<Node> children;
}
