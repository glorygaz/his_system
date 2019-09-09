package com.neu.service.impl;

import com.neu.dao.*;
import com.neu.dto.DiagnosisPatient;
import com.neu.dto.RegisCancel;
import com.neu.dto.Result;
import com.neu.model.Patient;
import com.neu.model.Registration;
import com.neu.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Autowired
    RegistrationMapper registrationMapper;
    @Autowired
    DepartmentMapper departmentMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    RegisLevelMapper regisLevelMapper;
    @Autowired
    SettlementCategoryMapper settlementCategoryMapper;
    @Autowired
    PatientMapper patientMapper;

    @Override
    public int insert(int medReId,Date regisDate, String noonDistinction, String deptName, String docName, String regisLevel, String settlementType, boolean isMedBook) {
        int deptId = departmentMapper.selectByDeptName(deptName).getId();
        int docId = userMapper.selectByName(docName).getId();
        int regLeId = regisLevelMapper.selectByName(regisLevel).getId();
        int seId = settlementCategoryMapper.selectByName(settlementType).getId();
        return registrationMapper.insertSelective(new Registration(null, medReId,regisDate, noonDistinction, deptId ,docId, regLeId, seId, isMedBook, new Date(), 0));
    }

    @Override
    public int getLastId() {
        return registrationMapper.getLastKey();
    }

    @Override
    public List<RegisCancel> getRegisCancels(int medReId) {
        Patient patient = patientMapper.selectByPrimaryKey(medReId);
        List<Registration> regiss = registrationMapper.getByMedReId(medReId);
        List<RegisCancel> rgc = new ArrayList<>();
        if(regiss.size() != 0){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            for (Registration registration : regiss) {
                rgc.add(new RegisCancel(medReId, patient.getName(), patient.getIdnum(), patient.getAddress(),
                        registration.getId(), regisLevelMapper.selectByPrimaryKey(registration.getRegisLevelId()).getName(),
                        userMapper.selectByPrimaryKey(registration.getDocId()).getName(), sdf.format(registration.getRegisTime()),
                        registration.getNoonDistinction(), departmentMapper.selectByPrimaryKey(registration.getDeptId()).getDeptName(),
                        regisStateTrans(registration.getRegisState())));
            }
        }
        return rgc;
    }

    @Override
    public Result cancelRegis(int regisId) {
        int state = registrationMapper.selectByPrimaryKey(regisId).getRegisState();
        if(state == 0){
            registrationMapper.updateByPrimaryKeySelective(new Registration(regisId,null,null,null,null,null,null,null,null,null,3));
            return new Result(true,"退号成功");
        }
        if(state == 1)
            return new Result(false,"该挂号已诊断，不能退号");
        if(state == 2)
            return new Result(false,"该挂号已取药，不能退号");
        if(state == 3)
            return new Result(false,"该挂号已退号，不能再次退号");
        if(state == 4)
            return new Result(false,"该挂号已作废，不能退号");
        return new Result(false,"该挂号为未知状态，不能退号");
    }

    @Override
    public List<DiagnosisPatient> getPatientPersonalUndo(int docId) {
        List<Registration> regisList = registrationMapper.getByDocId(docId);
        List<DiagnosisPatient> rcList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d1 = sdf.format(new Date());
        Patient p = null;
        for (Registration r : regisList) {
            if(r.getRegisState() == 0 && d1.equals(sdf.format(r.getRegisDate()))){
                p = patientMapper.selectByPrimaryKey(r.getMedicalRecordId());
                rcList.add(new DiagnosisPatient(p.getMedicalRecordId(),p.getName(),r.getId(),p.getAge(),p.getSex()?"女":"男",p.getAgeType(),"未诊"));
            }
        }
        return rcList;
    }

    @Override
    public List<DiagnosisPatient> getPatientPersonalDone(int docId) {
        List<Registration> regisList = registrationMapper.getByDocId(docId);
        List<DiagnosisPatient> rcList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d1 = sdf.format(new Date());
        Patient p = null;
        for (Registration r : regisList) {
            if((r.getRegisState() == 1 || r.getRegisState() == 2) && d1.equals(sdf.format(r.getRegisDate()))){
                p = patientMapper.selectByPrimaryKey(r.getMedicalRecordId());
                rcList.add(new DiagnosisPatient(p.getMedicalRecordId(),p.getName(),r.getId(),p.getAge(),p.getSex()?"女":"男",p.getAgeType(),"诊毕"));
            }
        }
        return rcList;
    }

    @Override
    public List<DiagnosisPatient> getPatientDeptUndo(int deptId) {
        List<Registration> regisList = registrationMapper.getByDeptId(deptId);
        List<DiagnosisPatient> rcList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d1 = sdf.format(new Date());
        Patient p = null;
        for (Registration r : regisList) {
            if(r.getRegisState() == 0 && d1.equals(sdf.format(r.getRegisDate()))){
                p = patientMapper.selectByPrimaryKey(r.getMedicalRecordId());
                rcList.add(new DiagnosisPatient(p.getMedicalRecordId(),p.getName(),r.getId(),p.getAge(),p.getSex()?"女":"男",p.getAgeType(),"未诊"));
            }
        }
        return rcList;
    }

    @Override
    public List<DiagnosisPatient> getPatientDeptDone(int deptId) {
        List<Registration> regisList = registrationMapper.getByDeptId(deptId);
        List<DiagnosisPatient> rcList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String d1 = sdf.format(new Date());
        Patient p = null;
        for (Registration r : regisList) {
            if((r.getRegisState() == 1 || r.getRegisState() == 2) && d1.equals(sdf.format(r.getRegisDate()))){
                p = patientMapper.selectByPrimaryKey(r.getMedicalRecordId());
                rcList.add(new DiagnosisPatient(p.getMedicalRecordId(),p.getName(),r.getId(),p.getAge(),p.getSex()?"女":"男",p.getAgeType(),"诊毕"));
            }
        }
        return rcList;
    }

    private String regisStateTrans(int state){
        if(state == 0)
            return "已挂号";
        if(state == 1)
            return "已诊断";
        if(state == 2)
            return "已取药";
        if(state == 3)
            return "已退号";
        if(state == 4)
            return "已作废";
        return "未知状态";
    }
}
