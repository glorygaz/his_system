package com.neu.controller;

import com.neu.model.User;
import com.neu.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MedicalRecordController {
    @Resource
    RegistrationService registrationService;

    @RequestMapping("/medicalRecord")
    private String medicalRecord(){
        return "medical-record";
    }

    @RequestMapping("/medicalRecordOutFrame")
    private String medicalRecordOutFrame(HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("LOGIN_USER");
        model.addAttribute("patientPersonalUndo", registrationService.getPatientPersonalUndo(user.getId()));
        model.addAttribute("patientPersonalDone", registrationService.getPatientPersonalDone(user.getId()));
        model.addAttribute("patientDeptUndo", registrationService.getPatientDeptUndo(user.getDepartmentId()));
        model.addAttribute("patientDeptDone", registrationService.getPatientDeptDone(user.getDepartmentId()));
        model.addAttribute("UserId", user.getId());
        return "medical-record-outframe";
    }

    @RequestMapping("/homepage")
    private String homepage(){
        return "homepage";
    }
}
