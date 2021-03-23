package com.ddwuproj.controller;

import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import com.ddwuproj.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/co")
public class RestController {

    @Autowired
    SearchService searchService;

    @RequestMapping("/hos")
    public Map<String,Object> hospital(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        List<Hospital> list;
        if(sido.equals("전체")) {
            list = searchService.getAllHospital();
        }
        else {
            list = searchService.getHospitalList(sido, gungu);
        }
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/cli")
    public Map<String,Object> clinic(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        List<Clinic> list;
        if(sido.equals("전체")) {
            list = searchService.getAllClinic();
        }
        else {
            list = searchService.getClinicList(sido, gungu);
        }
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/tri")
    public Map<String,Object> triage(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        List<Triage> list;
        if(sido.equals("전체")) {
            list = searchService.getAllTriage();
        }
        else {
            list = searchService.getTriageList(sido, gungu);
        }
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/car")
    public Map<String,Object> cartriage(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        List<CarTriage> list;
        if(sido.equals("전체")) {
            list = searchService.getAllCarTriage();
        }
        else {
            list = searchService.getCarTriageList(sido, gungu);
        }
        map.put("result", result);
        map.put("list", list);

        return map;
    }



}
