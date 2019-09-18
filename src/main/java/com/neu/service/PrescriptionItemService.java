package com.neu.service;

import com.neu.model.PrescriptionItem;

import java.util.List;

public interface PrescriptionItemService {
    void addPrescItem(PrescriptionItem prescriptionItem);
    List<PrescriptionItem> searchByPrescId(int prescId);
    void updateState(int id, int state);
}
