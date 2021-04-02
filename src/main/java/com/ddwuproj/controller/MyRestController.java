package com.ddwuproj.controller;

import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import com.ddwuproj.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/co")
public class MyRestController {

    @Autowired
    SearchService searchService;

    @RequestMapping("/hos")
    public Map<String,Object> hospital(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu
            , @RequestParam(required = false, defaultValue = "")String type){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        List<Hospital> list;
            list = searchService.getHospitalList(sido, gungu, type);
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/cli")
    public Map<String,Object> clinic(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu
        , @RequestParam(required = false, defaultValue = "")String collect, @RequestParam(required = false) String[] chkArray){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        if(chkArray == null){
            chkArray = new String[]{"openMo", "openTu","openWe","openTh","openFr","openSa","openSu"};
        }
        HashMap<String, Object> paraMap = new HashMap<>();
        paraMap.put("sido", sido);
        paraMap.put("gungu", gungu);
        paraMap.put("collect", collect);
        paraMap.put("array", chkArray);


        List<Clinic> list;
            list = searchService.getClinicList(paraMap);
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/tri")
    public Map<String,Object> triage(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu
            , @RequestParam(required = false) String[] chkArray){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        if(chkArray == null){
            chkArray = new String[]{"openWd","openSa","openSu"};
        }
        HashMap<String, Object> paraMap = new HashMap<>();
        paraMap.put("sido", sido);
        paraMap.put("gungu", gungu);
        paraMap.put("array", chkArray);

        List<Triage> list;
            list = searchService.getTriageList(paraMap);
        map.put("result", result);
        map.put("list", list);

        return map;
    }

    @RequestMapping("/car")
    public Map<String,Object> cartriage(@RequestParam(required = false, defaultValue = "")String sido, @RequestParam(required = false, defaultValue = "")String gungu
            , @RequestParam(required = false) String[] chkArray){
        Map<String, Object> map = new HashMap<>();
        Object result = new String[]{sido, gungu};

        if(chkArray == null){
            chkArray = new String[]{"openWd","openSa","openSu"};
        }
        HashMap<String, Object> paraMap = new HashMap<>();
        paraMap.put("sido", sido);
        paraMap.put("gungu", gungu);
        paraMap.put("array", chkArray);

        List<CarTriage> list;
            list = searchService.getCarTriageList(paraMap);
        map.put("result", result);
        map.put("list", list);

        return map;
    }



}
