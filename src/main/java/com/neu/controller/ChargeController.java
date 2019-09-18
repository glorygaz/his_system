package com.neu.controller;

import com.neu.dto.ExpenseInfo;
import com.neu.dto.Result;
import com.neu.model.*;
import com.neu.service.*;
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
public class ChargeController {
    @Resource
    PatientService patientService;
    @Resource
    MedicineService medicineService;
    @Resource
    PrescriptionService prescriptionService;
    @Resource
    PrescriptionItemService prescriptionItemService;
    @Resource
    InvoiceService invoiceService;
    @Resource
    ExpenseDetailService expenseDetailService;

    @RequestMapping("/charge")
    private String charge(){
        return "charge";
    }

    @RequestMapping("/getExpenseList")
    @ResponseBody
    private Result getExpenseList(@RequestParam("medicalRecordId") int medRecId){
        Patient patient = patientService.selectPatient(medRecId);
        if(patient == null){
            return new Result(false, "未查询到相关数据");
        }
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<Prescription> prescriptions = prescriptionService.searchByMedRecId(medRecId);
        List<ExpenseInfo> expenseInfoList = new ArrayList<>();
        for (Prescription prescription : prescriptions) {
            List<PrescriptionItem> prescriptionItems = prescriptionItemService.searchByPrescId(prescription.getId());
            for (PrescriptionItem prescriptionItem : prescriptionItems) {
                if(prescriptionItem.getState() == 1){
                    Medicine medicine = medicineService.searchById(prescriptionItem.getItemId());
                    expenseInfoList.add(new ExpenseInfo(medRecId, patient.getName(), patient.getIdnum(),
                            patient.getAddress(), prescription.getRegisId(), prescriptionItem.getItemId(),
                            medicine.getMedicineName(), medicine.getPrice(), prescriptionItem.getNum(), format.format(prescription.getCreateTime()), prescriptionItem.getId()));
                }
            }
        }
        return new Result<>(true, expenseInfoList);
    }

    @RequestMapping("/openInvoice")
    @ResponseBody
    private Result openInvoice(@RequestBody Invoice invoice){
        if(invoiceService.insert(invoice)){
            return new Result(true, null);
        }else{
            return new Result(false, "该发票号已经被使用");
        }
    }

    @RequestMapping("/addExpenseDetail")
    @ResponseBody
    private Result addExpenseDetail(@RequestBody List<ExpenseDetail> expenseDetails){
        for (ExpenseDetail expenseDetail : expenseDetails) {
            expenseDetailService.insertExpDetail(expenseDetail);
        }
        return new Result(true, null);
    }

    @RequestMapping("/updatePrescItemState")
    @ResponseBody
    private Result updatePrescItemState(@RequestBody List<Integer> prescItemIdList){
        for (int prescItemId : prescItemIdList) {
            prescriptionItemService.updateState(prescItemId, 2);
        }
        return new Result(true, null);
    }
}
