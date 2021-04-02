package com.ddwuproj.service;

import com.ddwuproj.dao.SearchMapper;
import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class SearchService {
    @Autowired
    private SearchMapper searchMapper;

    public List<CarTriage> getCarTriageList(HashMap<String,Object> paraMap){
        return searchMapper.getCarTriageList(paraMap);
    }
    public List<Clinic> getClinicList(HashMap<String,Object> paraMap){
        return searchMapper.getClinicList(paraMap);
    }
    public List<Hospital> getHospitalList(String sido, String gungu, String type){
        return searchMapper.getHospitalList(sido, gungu, type);
    }
    public List<Triage> getTriageList(HashMap<String,Object> paraMap){
        return searchMapper.getTriageList(paraMap);
    }
}
