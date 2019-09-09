package com.neu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MedicalRecordController {
    @RequestMapping("/medicalRecord")
    private String medicalRecord(){
        return "medical-record";
    }
}
