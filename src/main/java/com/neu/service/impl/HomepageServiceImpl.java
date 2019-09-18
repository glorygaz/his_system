package com.neu.service.impl;

import com.neu.dao.HomepageMapper;
import com.neu.model.Homepage;
import com.neu.service.HomepageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HomepageServiceImpl implements HomepageService {
    @Resource
    HomepageMapper homepageMapper;

    @Override
    public void insertHomepage(Homepage homepage) {
        homepageMapper.insertSelective(homepage);
    }

    @Override
    public Homepage searchHomepageByRegisId(int regisId) {
        return homepageMapper.selectByRegisId(regisId);
    }

    @Override
    public void updateHomepage(Homepage homepage) {
        homepageMapper.updateByPrimaryKeySelective(homepage);
    }
}
