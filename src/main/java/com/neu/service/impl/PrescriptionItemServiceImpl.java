package com.neu.service.impl;

import com.neu.dao.PrescriptionItemMapper;
import com.neu.model.PrescriptionItem;
import com.neu.service.PrescriptionItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PrescriptionItemServiceImpl implements PrescriptionItemService {
    @Resource
    PrescriptionItemMapper prescriptionItemMapper;

    @Override
    public void addPrescItem(PrescriptionItem prescriptionItem) {
        prescriptionItemMapper.insertSelective(prescriptionItem);
    }

    @Override
    public List<PrescriptionItem> searchByPrescId(int prescId) {
        return prescriptionItemMapper.selectByPrescId(prescId);
    }

    @Override
    public void updateState(int id, int state) {
        prescriptionItemMapper.updateByPrimaryKeySelective(new PrescriptionItem(id, null,null,null,null,null,null,state));
    }
}
