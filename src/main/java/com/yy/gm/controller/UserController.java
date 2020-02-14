package com.yy.gm.controller;

import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.User;
import com.yy.gm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/getUsers", method = RequestMethod.GET)
    public Pagination<User> getUsers(@ModelAttribute Pagination<User> page) {
        return userService.getUsers(page);
    }

    @RequestMapping(value = "/getUser", method = RequestMethod.GET)
    public User getUser(@RequestParam String uuid) {
        return userService.getUser(uuid);
    }

    @RequestMapping(value = "/insert")
    public int insertUser(@ModelAttribute User user) {
        return userService.insertDuty(user);
    }

    @RequestMapping(value = "/update")
    public int updateUser(@ModelAttribute User user) {
        return userService.update(user);
    }

}
