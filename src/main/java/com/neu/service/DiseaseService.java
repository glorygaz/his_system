package com.neu.service;

import com.neu.model.Disease;

import java.util.List;

public interface DiseaseService {
    List<Disease> getDimNameDiseList(String diseaseName);

    Disease searchById(int id);
}
