package com.yy.gm.mapper;

import com.yy.gm.entity.Duty;
import com.yy.gm.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface UserMapper {

    public int getCount();

    public List<User> getUsers(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

    public User getUser(String id);

    public int insert(User user);

    public int insertUserDuty(@Param("userId") String userId, @Param("duties") List<Duty> duties);

    public int update(User user);

    public int deleteUserDuty(String userId);
}
