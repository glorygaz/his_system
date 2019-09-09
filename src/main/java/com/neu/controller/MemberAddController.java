package com.neu.controller;

import com.neu.dto.Result;
import com.neu.model.Patient;
import com.neu.model.User;
import com.neu.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class MemberAddController {
    @Autowired
    private UserService userService;
    @Autowired
    private InvoiceService invoiceService;
    @Autowired
    private PatientService patientService;
    @Autowired
    private DeptService deptService;
    @Autowired
    private RegisLevelService regisLevelService;
    @Autowired
    private RegistrationService registrationService;

    @RequestMapping("/member_add")
    private String memberAdd(Model model){
        model.addAttribute("deptNameList",deptService.getAllDeptName());
        return "member-add";
    }

    @RequestMapping(value = "/getNewInvoiceNum")
    @ResponseBody
    private long getNewInvoiceNum(){
        return invoiceService.getLastKey()+1;
    }

    @RequestMapping(value = "/getNewMedicalRecordId")
    @ResponseBody
    private int getNewMedicalRecordId(){
        return patientService.getLastKey()+1;
    }

    @RequestMapping(value = "/searchPatient")
    @ResponseBody
    private Result searchPatient(@RequestParam("medicalRecordId") int medicalRecordId){
        Patient patient = patientService.selectPatient(medicalRecordId);
        if(patient == null){
            return new Result(false, "");
        }else{
            return new Result<>(true, patient);
        }
    }

    @RequestMapping(value = "/getDocList")
    @ResponseBody
    private Result getDocList(@RequestParam("deptName") String deptName, @RequestParam("regisLevelName") String regLeName){
        int deptId = deptService.selectByDeptName(deptName).getId();
        int regLeId = regisLevelService.getByName(regLeName).getId();
        List<User> userList = userService.getByDeptIdAndRegLeId(deptId, regLeId);
        List<String> userNameList = new ArrayList<>();
        for (User user : userList) {
            userNameList.add(user.getName());
        }
        if(userNameList.size() == 0){
            return new Result(false, "");
        }else{
            return new Result<>(true, userNameList);
        }
    }

    @RequestMapping(value = "/getRegisAmount")
    @ResponseBody
    private String getRegisAmount(@RequestParam("regisLevelName") String regLeName){
        return regisLevelService.getByName(regLeName).getAmount().toString();
    }

    @RequestMapping(value = "/regis")
    @ResponseBody
    private Result regis(@RequestParam("invoiceNum") long invoiceNum, @RequestParam("medicalRecordId") int medRecId,
                         @RequestParam("name") String name, @RequestParam("sex") String sex, @RequestParam("age") int age,
                         @RequestParam("ageType") String ageType, @RequestParam("birthday") String birthday,
                         @RequestParam("idNum") String idNum, @RequestParam("address") String address,
                         @RequestParam("settlementType") String settlementType, @RequestParam("regisDate") String regisDate,
                         @RequestParam("noonDistinction") String noonDistinction, @RequestParam("department") String deptName,
                         @RequestParam("regisLevel") String regisLevel, @RequestParam("doctor") String docName,
                         @RequestParam(value = "isMedicalRecord",defaultValue = "false") boolean isMedBook, @RequestParam("amount") String amount,
                         @RequestParam("tollBy") String tollBy){
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            if(patientService.insertPatient(medRecId,idNum,name,format.parse(birthday),age,ageType,sex,address)){
                registrationService.insert(medRecId, format.parse(regisDate),noonDistinction,deptName,docName,regisLevel,settlementType,isMedBook);
                int regisId = registrationService.getLastId();
                if(invoiceService.insert(invoiceNum,amount,0, new Date(), regisId, tollBy)){
                    return new Result(true, null);
                }else{
                    return new Result(false, "该发票号已被使用，请重新生成发票号");
                }
            }else{
                return new Result(false,"该病历号已被使用，请重新生成新病历号");
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new Result(false,"发生错误");
    }
}

