package com.neu.service;

import com.neu.model.User;

import java.util.List;

public interface UserService {
    /**
     *
     * @param uid
     * @return
     */
    User getByUid(int uid);

    List<User> getByDeptIdAndRegLeId(int deptId, int regLeId);

    User login(String username, String pwd);
}
