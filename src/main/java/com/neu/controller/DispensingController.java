package com.neu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DispensingController {

    @RequestMapping("/dispensing")
    private String dispensing(){
        return "dispensing";
    }
}
