package com.neu.dao;

import com.neu.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> selectByDeptIdAndRegLeId(@Param(value = "departmentId") int deptId,@Param(value = "regisLevelId") int regLeId);

    User selectByName(String name);

    User selectByUsernameAndPwd(@Param(value = "username")String username, @Param(value = "psw")String pwd);
}