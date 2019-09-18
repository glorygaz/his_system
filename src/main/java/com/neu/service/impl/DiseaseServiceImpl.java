package com.neu.service.impl;

import com.neu.dao.DiseaseMapper;
import com.neu.model.Disease;
import com.neu.service.DiseaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {
    @Resource
    private DiseaseMapper diseaseMapper;

    @Override
    public List<Disease> getDimNameDiseList(String diseaseName) {
        return diseaseMapper.selectByDimName(diseaseName);
    }

    @Override
    public Disease searchById(int id) {
        return diseaseMapper.selectByPrimaryKey(id);
    }
}
