package com.ddwuproj.controller;

import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import com.ddwuproj.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class ViewController {

    @Autowired
    SearchService searchService;


    @GetMapping
    public String main(){
        return "index";
    }

    @GetMapping("/bs")
    public String main2(){
        return "main";
    }

    @GetMapping("/clinic")
    public String clinic(ModelMap model, @RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        List<Clinic> list;
        if(sido.equals("전체")) {
            list = searchService.getAllClinic();
        }
        else {
            list = searchService.getClinicList(sido, gungu);
        }
        model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("/hospital")
    public String hospital(ModelMap model, @RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        List<Hospital> list;
        if(sido.equals("전체")) {
            list = searchService.getAllHospital();
        }
        else {
            list = searchService.getHospitalList(sido, gungu);
        }
        model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("/triage")
    public String triage(ModelMap model, @RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        List<Triage> list;
        if(sido.equals("전체")) {
            list = searchService.getAllTriage();
        }
        else {
            list = searchService.getTriageList(sido, gungu);
        }
        model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("/cartriage")
    public String cartriage(ModelMap model, @RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        List<CarTriage> list;
        if(sido.equals("전체")) {
            list = searchService.getAllCarTriage();
        }
        else {
            list = searchService.getCarTriageList(sido, gungu);
        }
        model.addAttribute("list", list);
        return "index";
    }

}
