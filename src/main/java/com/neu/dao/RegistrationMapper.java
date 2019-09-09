package com.neu.dao;

import com.neu.model.Registration;

import java.util.List;

public interface RegistrationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Registration record);

    int insertSelective(Registration record);

    Registration selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Registration record);

    int updateByPrimaryKey(Registration record);

    int getLastKey();

    List<Registration> getByMedReId(int medReId);

    List<Registration> getByDocId(int medReId);

    List<Registration> getByDeptId(int medReId);


}