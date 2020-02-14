package com.yy.gm.entity;

import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Data
public class Organization {
    /* 主键 */
    private String organ_uuid;
    /* 组织编码 */
    private String organ_code;
    /* 组织名称 */
    private String organ_name;
    /* 组织类型 */
    private String organ_type;
    /* 是否在用 */
    private String in_use;
    /* 父组织id */
    private String parent_uuid;
    /* 状态 */
    private String status;
    /* 操作人 */
    private String modifierid;
    /* 修改时间 */
    private Timestamp modtime = new Timestamp(new Date().getTime());
    /* 描述 */
    private String description;
    /* 组织账号编码 */
    private String account_code;
    /* 简称 */
    private String shortname;

    private List<Organization> children;

    private Organization parent;
}
