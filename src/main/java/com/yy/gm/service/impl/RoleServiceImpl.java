package com.yy.gm.service.impl;

import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Role;
import com.yy.gm.mapper.RoleMapper;
import com.yy.gm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public int insert(Role role) {
        role.setRole_uuid(UUID.randomUUID().toString().substring(0,6));
        return roleMapper.insert(role);
    }

    @Override
    public int update(Role role) {
        return roleMapper.update(role);
    }

    @Override
    public int remove(String id) {
        return roleMapper.remove(id);
    }

    @Override
    public Role getRole(String uuid) {
        return roleMapper.getRole(uuid);
    }

    @Override
    public Pagination<Role> getRoles(Pagination<Role> page) {
        page.setTotal(roleMapper.getCount());
        List<Role> roles=roleMapper.getRoles((page.getPageNumber()-1)*page.getPageSize(),page.getPageSize());
        page.setRows(roles);
        return page;
    }

    @Override
    public int linkResource(String roleId, String resources) {
        roleMapper.removeResource(roleId);
        return roleMapper.linkResource(roleId,resources.split(","));
    }

    @Override
    public List<String> getResources(String roleId) {
        return roleMapper.getResources(roleId);
    }


}
