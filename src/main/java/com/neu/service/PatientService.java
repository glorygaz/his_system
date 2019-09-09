package com.neu.service;

import com.neu.model.Patient;

import java.util.Date;

public interface PatientService {
    int getLastKey();
    Patient selectPatient(int id);
    boolean checkRegisValid(int medRecId, String idNum);
    boolean insertPatient(int medRecId, String idNum, String name,
                          Date birthday, int age, String ageType,
                          String sex, String address);
}
