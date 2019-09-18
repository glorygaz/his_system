package com.neu.controller;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.neu.dto.DiagnosisWithDisease;
import com.neu.dto.Result;
import com.neu.model.Diagnosis;
import com.neu.model.Disease;
import com.neu.model.Homepage;
import com.neu.model.Registration;
import com.neu.service.DiagnosisService;
import com.neu.service.DiseaseService;
import com.neu.service.HomepageService;
import com.neu.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomepageController {
    @Resource
    DiseaseService diseaseService;
    @Resource
    DiagnosisService diagnosisService;
    @Resource
    HomepageService homepageService;
    @Resource
    RegistrationService registrationService;

    @RequestMapping("/searchIll")
    @ResponseBody
    private Result searchIll(String diseaseName){
        List<Disease> diseaseList = diseaseService.getDimNameDiseList(diseaseName);
        if(diseaseList.isEmpty()){
            return new Result(false,"无查询结果");
        }
        return new Result<>(true, diseaseList);
    }

    @RequestMapping("/addHomepageAndDiagnosis")
    @ResponseBody
    private Result addHomepageAndDiagnosis(@RequestParam("medRecId") int medRecId, @RequestParam("regisId") int regisId,
                                           @RequestParam("chiefComplaint") String chiefComplaint, @RequestParam("presentIll") String presentIll,
                                           @RequestParam("treatmentOfPresentIll") String treatmentOfPresentIll,
                                           @RequestParam("previousHistory")String previousHistory, @RequestParam("allergicHistory") String allergicHistory,
                                           @RequestParam("healthCheck")String healthCheck, @RequestParam("diseaseList") String diseaseListString) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ObjectMapper mapper = new ObjectMapper();
        List<String> diseaseList = null;
        Homepage homepage = homepageService.searchHomepageByRegisId(regisId);
        List<Diagnosis> diagnosisList = diagnosisService.searchDiagnosisByRegisId(regisId);
        try {
            diseaseList = mapper.readValue(diseaseListString, new TypeReference<List<String>>(){});
            if(homepage != null){   //不为空则更新
                homepageService.updateHomepage(new Homepage(homepage.getId(), medRecId, regisId, chiefComplaint, presentIll, treatmentOfPresentIll, previousHistory, allergicHistory, healthCheck, 1));
                for (String s : diseaseList) {
                    String[] diseaseInfo = s.split(",");
                    int diseaseId = Integer.parseInt(diseaseInfo[0]);
                    boolean flag = true;
                    for (Diagnosis diagnosis : diagnosisList) {
                        if (diagnosis.getDiseaseId() == diseaseId) {
                            flag = false;
                        }
                    }
                    if(flag){
                        diagnosisService.insertDiagnosis(new Diagnosis(null, medRecId, regisId, diseaseId, null, format.parse(diseaseInfo[1]), false));
                    }
                }
                return new Result(true, "更新成功");
            }
            homepageService.insertHomepage(new Homepage(null, medRecId, regisId, chiefComplaint, presentIll, treatmentOfPresentIll, previousHistory, allergicHistory, healthCheck, 1));
            for (String s : diseaseList) {
                String[] diseaseInfo = s.split(",");
                diagnosisService.insertDiagnosis(new Diagnosis(null, medRecId, regisId, Integer.parseInt(diseaseInfo[0]), null, format.parse(diseaseInfo[1]), false));
            }
            registrationService.updateRegis(new Registration(regisId, null, null, null, null, null, null, null, null, null, 1));
            return new Result(true,"提交成功");
        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
        return new Result(false,"发生未知错误，提交失败");
    }

    @RequestMapping("/homepageFilled")
    @ResponseBody
    private Result homepageFilled(@RequestParam("regisId") int regisId){
        Homepage homepage = homepageService.searchHomepageByRegisId(regisId);
        List<Diagnosis> diagnosisList = diagnosisService.searchDiagnosisByRegisId(regisId);
        List<DiagnosisWithDisease> diagnosisWithDiseaseList = new ArrayList<>();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (Diagnosis diagnosis : diagnosisList) {
            Disease disease = diseaseService.searchById(diagnosis.getDiseaseId());
            diagnosisWithDiseaseList.add(new DiagnosisWithDisease(disease.getId(),
                    disease.getDiseaseIcd(), disease.getDiseaseName(),
                    format.format(diagnosis.getIllDate())));
        }
        Map resultMap = new HashMap();
        resultMap.put("homepage", homepage);
        resultMap.put("diagnosisList", diagnosisWithDiseaseList);
        return new Result<>(true, resultMap);
    }
}
