package com.yy.gm.service.impl;

import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.User;
import com.yy.gm.mapper.UserMapper;
import com.yy.gm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public Pagination<User> getUsers(Pagination<User> page) {
        int total = this.userMapper.getCount();
        List<User> users = this.userMapper.getUsers((page.getPageNumber() - 1) * page.getPageSize(), page.getPageSize());
        page.setRows(users);
        page.setTotal(total);
        return page;
    }

    @Override
    public User getUser(String id) {
        return userMapper.getUser(id);
    }

    @Override
    public int insertDuty(User user) {
        int result = this.userMapper.insert(user);
        if (result == 1 && user.getDuties() != null) {
            return this.userMapper.insertUserDuty(user.getUser_uuid(), user.getDuties());
        }
        return result;
    }

    @Override
    public int update(User user) {
        int result = this.userMapper.update(user);
        if (result == 1) {
            this.userMapper.deleteUserDuty(user.getUser_uuid());
            this.userMapper.insertUserDuty(user.getUser_uuid(), user.getDuties());
            return 1;
        }
        return 0;
    }
}
