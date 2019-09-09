package com.neu.service.impl;

import com.neu.dao.RegisLevelMapper;
import com.neu.model.RegisLevel;
import com.neu.service.RegisLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisLevelServiceImpl implements RegisLevelService {
    @Autowired
    private RegisLevelMapper regisLevelMapper;

    @Override
    public RegisLevel getByName(String name) {
        return regisLevelMapper.selectByName(name);
    }
}
