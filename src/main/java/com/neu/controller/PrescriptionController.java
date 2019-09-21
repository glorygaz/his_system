package com.neu.controller;

import com.neu.dto.PrescIdAndName;
import com.neu.dto.PrescriptionItemWithMed;
import com.neu.dto.Result;
import com.neu.model.*;
import com.neu.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class PrescriptionController {
    @Resource
    DiseaseService diseaseService;
    @Resource
    DiagnosisService diagnosisService;
    @Resource
    MedicineService medicineService;
    @Resource
    PrescriptionService prescriptionService;
    @Resource
    PrescriptionItemService prescriptionItemService;

    @RequestMapping("/searchDiagnosis")
    @ResponseBody
    private Result searchDiagnosis(int regisId){
        List<Diagnosis> diagnosisList = diagnosisService.searchDiagnosisByRegisId(regisId);
        List<String> diseaseNameList = new ArrayList<>();
        for (Diagnosis diagnosis : diagnosisList) {
            Disease disease = diseaseService.searchById(diagnosis.getDiseaseId());
            diseaseNameList.add(disease.getDiseaseName());
        }
        return new Result<>(true, diseaseNameList);
    }

    @RequestMapping("/searchMedicine")
    @ResponseBody
    private Result searchMedicine(String medicineName){
        List<Medicine> medicineList = medicineService.getDimNameMedList(medicineName);
        if(medicineList.isEmpty()){
            return new Result(false,"无查询结果");
        }
        return new Result<>(true, medicineList);
    }

    @RequestMapping("/openPrescription")
    @ResponseBody
    private Result openPrescription(@RequestParam("medRecId") int medRecId,
                                    @RequestParam("regisId") int regisId,
                                    @RequestParam("prescName")String prescName,
                                    @RequestParam("docId")int docId){
        prescriptionService.openPrescription(new Prescription(null, medRecId, regisId, docId, prescName, new Date(), 1));
        return new Result<>(true, prescriptionService.getLastestId());
    }

    @RequestMapping("/addPrescriptionItems")
    @ResponseBody
    private Result addPrescriptionItems(@RequestBody List<PrescriptionItem> prescriptionItemList){
//        int prescId = prescriptionService.getLastestId();
        for (PrescriptionItem prescriptionItem : prescriptionItemList) {
//            prescriptionItem.setPrescId(prescId);
            prescriptionItemService.addPrescItem(prescriptionItem);
        }
        return new Result(true, null);
    }

    @RequestMapping("/prescriptionFilled")
    @ResponseBody
    private Result prescriptionFilled(int regisId){
        List<Prescription> prescriptions = prescriptionService.searchByRegisId(regisId);
        if(prescriptions.isEmpty()){
            return new Result(false, null);
        }
        List<PrescIdAndName> prescNameIds = new ArrayList<>();
        for (Prescription prescription : prescriptions) {
            prescNameIds.add(new PrescIdAndName(prescription.getId(), prescription.getPrescName()));
        }
        return new Result<>(true, prescNameIds);
    }

    @RequestMapping("/prescriptionItemFilled")
    @ResponseBody
    private Result prescriptionItemFilled(int prescId){
        List<PrescriptionItem> prescriptionItems = prescriptionItemService.searchByPrescId(prescId);
        if(prescriptionItems.isEmpty()){
            return new Result(false, null);
        }
        List<PrescriptionItemWithMed> prescInfos = new ArrayList<>();
        for (PrescriptionItem prescriptionItem : prescriptionItems) {
            Medicine medicine = medicineService.searchById(prescriptionItem.getItemId());
            prescInfos.add(new PrescriptionItemWithMed(medicine.getMedicineId(), medicine.getMedicineName(),
                    medicine.getSpecification(), medicine.getPrice(), prescriptionItem.getPrescUsage(),
                    prescriptionItem.getDosage(), prescriptionItem.getFrequency(), prescriptionItem.getNum()));
        }
        return new Result<>(true, prescInfos);
    }
}
