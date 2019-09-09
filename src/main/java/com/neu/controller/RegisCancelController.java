package com.neu.controller;

import com.neu.dto.RegisCancel;
import com.neu.dto.Result;
import com.neu.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RegisCancelController {
    @Autowired
    private RegistrationService registrationService;

    @RequestMapping("/regisCancel")
    private String regisCancelPage(Model model){
        return "regis-cancel";
    }

    @RequestMapping("/getRegisList")
    @ResponseBody
    private Result getRegisList(@RequestParam("medicalRecordId") int medRecId){
        List<RegisCancel> regisList = registrationService.getRegisCancels(medRecId);
        if(regisList.isEmpty()){
            return new Result(false, "未查询到相关数据");
        }else{
            return new Result<>(true, regisList);
        }
    }

    @RequestMapping("/cancelRegis")
    @ResponseBody
    private Result cancelRegis(@RequestParam("regisId") int regisId){
        return registrationService.cancelRegis(regisId);
    }
}
