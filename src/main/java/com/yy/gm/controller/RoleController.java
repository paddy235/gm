package com.yy.gm.controller;

import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Role;
import com.yy.gm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("/insert")
    public int addRole(@ModelAttribute Role role){
        return roleService.insert(role);
    }

    @RequestMapping("/update")
    public int updateRole(@ModelAttribute Role role){
        return roleService.update(role);
    }

    @RequestMapping("/remove")
    public int remove(@RequestParam String id){
        return roleService.remove(id);
    }

    @RequestMapping(value = "/getRoles")
    public Pagination<Role> getRoles(@ModelAttribute Pagination<Role> page) {
        return roleService.getRoles(page);
    }

    @RequestMapping(value = "/getRole")
    public Role getRole(@RequestParam String uuid)
    {
        return roleService.getRole(uuid);
    }

    @RequestMapping(value = "/getResources")
    public List<String> getResources(String roleId)
    {
        return roleService.getResources(roleId);
    }


    @RequestMapping(value = "/linkResource")
    public int linkResource(@RequestParam String roleId, @RequestParam String resources)
    {
        return  1;//roleService.linkResource(roleId, resources);
    }
    @RequestMapping(value = "/getRoles2")
    public List<Role> getRoles()
    {
        return roleService.getRoles(new Pagination<Role>(1, 1000)).getRows();
    }


}
