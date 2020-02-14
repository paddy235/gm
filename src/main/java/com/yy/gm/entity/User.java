package com.yy.gm.entity;

import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
@Data
public class User {
    /* 用户主键 */
    private String user_uuid;
    /* 用户名 */
    private String username;
    /* 密码 */
    private String password;
    /* 邮箱 */
    private String email;
    /* 手机号 */
    private String mobile;
    /* 是否停用 0否1是 */
    private Integer enabled;
    /* 部门 */
    private Organization organ;
    /* 岗位 */
    private List<Duty> duties;
    /* 昵称 */
    private String nice_name;
    /* 是否管理员 0否1是 */
    private Integer is_admin;
    /* 注册时间 */
    private Date registerdate;
    /* 最后登陆时间 */
    private Date lastlogintime;
    /* 密保问题 */
    private String pwdque;
    /* 密保答案 */
    private String pwdans;
    /* 备注 */
    private String remark;
    /* */
    private String status = "0";
    /* 操作时间 */
    private Timestamp modtime;
    /* 操作人ID */
    private String modifierid;
    /* 是否阳光用户 0否1是 */
    private Integer is_sun;
}
