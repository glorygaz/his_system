package com.neu.service.impl;

import com.neu.dao.DiagnosisMapper;
import com.neu.model.Diagnosis;
import com.neu.service.DiagnosisService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {
    @Resource
    DiagnosisMapper diagnosisMapper;

    @Override
    public void insertDiagnosis(Diagnosis diagnosis) {
        diagnosisMapper.insertSelective(diagnosis);
    }

    @Override
    public List<Diagnosis> searchDiagnosisByRegisId(int regisId) {
        return diagnosisMapper.selectByRegisId(regisId);
    }
}
