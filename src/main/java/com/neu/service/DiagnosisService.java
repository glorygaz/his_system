package com.neu.service;

import com.neu.model.Diagnosis;

import java.util.List;

public interface DiagnosisService {
    void insertDiagnosis(Diagnosis diagnosis);

    List<Diagnosis> searchDiagnosisByRegisId(int regisId);
}
