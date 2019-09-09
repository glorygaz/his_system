package com.neu.service.impl;

import com.neu.dao.UserMapper;
import com.neu.model.User;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    // 注入Service依赖
    @Autowired
    private UserMapper userMapper;

    @Override
    public User getByUid(int uid) {
        return userMapper.selectByPrimaryKey(uid);
    }

    @Override
    public List<User> getByDeptIdAndRegLeId(int deptId, int regLeId) {
        return userMapper.selectByDeptIdAndRegLeId(deptId, regLeId);
    }

    @Override
    public User login(String username, String pwd) {
        return userMapper.selectByUsernameAndPwd(username, pwd);
    }
}
