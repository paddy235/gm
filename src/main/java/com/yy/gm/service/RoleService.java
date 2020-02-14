package com.yy.gm.service;


import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Role;

import java.util.List;

public interface RoleService {
    int insert(Role role);
    int update(Role role);
    int remove(String id);
    Role getRole(String uuid);
    Pagination<Role> getRoles(Pagination<Role> page);
    int linkResource(String roleId,String resources);
    List<String> getResources(String roleId);


}
