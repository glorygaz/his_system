package com.neu.service.impl;

import com.neu.dao.PrescriptionMapper;
import com.neu.model.Prescription;
import com.neu.service.PrescriptionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PrescriptionServiceImpl implements PrescriptionService {
    @Resource
    PrescriptionMapper prescriptionMapper;

    @Override
    public void openPrescription(Prescription prescription) {
        prescriptionMapper.insertSelective(prescription);
    }

    @Override
    public int getLastestId() {
        return prescriptionMapper.getLastKey();
    }

    @Override
    public List<Prescription> searchByRegisId(int regisId) {
        return prescriptionMapper.selectByRegisId(regisId);
    }

    @Override
    public List<Prescription> searchByMedRecId(int medRecId) {
        return prescriptionMapper.selectByMedRecId(medRecId);
    }
}
