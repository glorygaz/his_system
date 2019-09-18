package com.neu.service;

import com.neu.model.Prescription;

import java.util.List;

public interface PrescriptionService {
    void openPrescription(Prescription prescription);
    int getLastestId();
    List<Prescription> searchByRegisId(int regisId);

    List<Prescription> searchByMedRecId(int medRecId);
}
