package com.yy.gm.mapper;

import com.yy.gm.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface RoleMapper {
    int getCount();

    int insert(Role role);

    int update(Role role);

    int remove(String id);

    Role getRole(String uuid);

    List<Role> getRoles(@Param("pageNum") int pageNum,@Param("pageSize") int pageSize);

    int linkResource(@Param("roleId") String roleId, @Param("resources") String[] resources);

    List<String> getResources(String roleId);

    int removeResource(String roleId);

}
