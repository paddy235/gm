package com.yy.gm.entity;

import lombok.Data;

@Data
public class Duty {
    private String dutyId;
    private String name;
    private Organization organ;
    private Role role;
}
