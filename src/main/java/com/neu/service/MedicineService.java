package com.neu.service;


import com.neu.model.Medicine;

import java.util.List;

public interface MedicineService {
    List<Medicine> getDimNameMedList(String medName);

    Medicine searchById(int id);
}
