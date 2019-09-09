package com.neu.service.impl;

import com.neu.dao.PatientMapper;
import com.neu.model.Patient;
import com.neu.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
public class PatientServiceImp implements PatientService {
    @Autowired
    PatientMapper patientMapper;

    @Override
    public int getLastKey() {
        return patientMapper.getLastKey();
    }

    @Override
    public Patient selectPatient(int id) {
        return patientMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean checkRegisValid(int medRecId, String idNum) {
        Patient p = patientMapper.selectByIdAndIdnum(medRecId, idNum);
        return p != null;
    }

    @Override
    @Transactional
    public boolean insertPatient(int medRecId, String idNum, String name, Date birthday, int age, String ageType, String sex, String address) {
        if(medRecId != (getLastKey()+1)){   //如果病历号不是最新的查看是否是之前已挂号的人的
            if(checkRegisValid(medRecId, idNum)){
                patientMapper.updateByPrimaryKey(new Patient(medRecId, idNum, name, birthday, age , ageType, !sex.equals("男"), address));
                return true;
            }else{
                return false;
            }
        }else{
            patientMapper.insertSelective(new Patient(null, idNum, name, birthday, age , ageType, !sex.equals("男"), address));
            return true;
        }
    }
}
