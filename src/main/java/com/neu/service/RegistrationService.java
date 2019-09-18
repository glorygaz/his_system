package com.neu.service;

import com.neu.dto.DiagnosisPatient;
import com.neu.dto.RegisCancel;
import com.neu.dto.Result;
import com.neu.model.Registration;

import java.util.Date;
import java.util.List;

public interface RegistrationService {
    int insert(int medReId, Date regisDate, String noonDistinction, String deptName, String docName,
               String regisLevel, String settlementType, boolean isMedBook);
    int getLastId();

    List<RegisCancel> getRegisCancels(int medReId);

    Result cancelRegis(int regisId);

    void updateRegis(Registration registration);

    List<DiagnosisPatient> getPatientPersonalUndo(int docId);
    List<DiagnosisPatient> getPatientPersonalDone(int docId);
    List<DiagnosisPatient> getPatientDeptUndo(int deptId);
    List<DiagnosisPatient> getPatientDeptDone(int deptId);
}
