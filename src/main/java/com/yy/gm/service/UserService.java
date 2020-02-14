package com.yy.gm.service;

import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.User;

public interface UserService {
    Pagination<User> getUsers(Pagination<User> page);

    User getUser(String id);

    int insertDuty(User user);

    int update(User user);
}
