package com.neu.service.impl;

import com.neu.dao.MedicineMapper;
import com.neu.model.Medicine;
import com.neu.service.MedicineService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MedicineServiceImpl implements MedicineService {
    @Resource
    MedicineMapper medicineMapper;

    @Override
    public List<Medicine> getDimNameMedList(String medName) {
        return medicineMapper.selectByDimName(medName);
    }

    @Override
    public Medicine searchById(int id) {
        return medicineMapper.selectByPrimaryKey(id);
    }
}
