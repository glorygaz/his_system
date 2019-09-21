package com.neu.controller;

import com.neu.dto.DispensingInfo;
import com.neu.dto.Result;
import com.neu.model.Medicine;
import com.neu.model.Patient;
import com.neu.model.Prescription;
import com.neu.model.PrescriptionItem;
import com.neu.service.MedicineService;
import com.neu.service.PatientService;
import com.neu.service.PrescriptionItemService;
import com.neu.service.PrescriptionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DispensingController {
    @Resource
    PatientService patientService;
    @Resource
    MedicineService medicineService;
    @Resource
    PrescriptionService prescriptionService;
    @Resource
    PrescriptionItemService prescriptionItemService;

    @RequestMapping("/dispensing")
    private String dispensing(){
        return "dispensing";
    }

    @RequestMapping("/getDispensingList")
    @ResponseBody
    private Result getDispensingList(@RequestParam("medicalRecordId")int medRecId){
        Patient patient = patientService.selectPatient(medRecId);
        if(patient == null){
            return new Result(false, "未查询到相关数据");
        }
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<Prescription> prescriptions = prescriptionService.searchByMedRecId(medRecId);
        List<DispensingInfo> dispensingInfoList = new ArrayList<>();
        for (Prescription prescription : prescriptions) {
            List<PrescriptionItem> prescriptionItems = prescriptionItemService.searchByPrescId(prescription.getId());
            for (PrescriptionItem prescriptionItem : prescriptionItems) {
                if(prescriptionItem.getState() == 2){
                    Medicine medicine = medicineService.searchById(prescriptionItem.getItemId());
                    dispensingInfoList.add(new DispensingInfo(patient.getName(), patient.getIdnum(), patient.getAddress(), medicine.getMedicineName(),
                            medicine.getPrice(), medicine.getSpecification(), medicine.getManufacturer(), prescriptionItem.getNum(),
                            prescription.getPrescName(), format.format(prescription.getCreateTime()), prescriptionItem.getId()));
                }
            }
        }
        return new Result<>(true, dispensingInfoList);
    }

    @RequestMapping("/updatePrescItemStateToDispensing")
    @ResponseBody
    private Result updatePrescItemStateToDispensing(@RequestBody List<Integer> prescItemIdList){
        for (int prescItemId : prescItemIdList) {
            prescriptionItemService.updateState(prescItemId, 3);
        }
        return new Result(true, null);
    }
}
