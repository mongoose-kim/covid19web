package com.ddwuproj.service;

import com.ddwuproj.dao.SearchMapper;
import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchService {
    @Autowired
    private SearchMapper searchMapper;

    public List<CarTriage> getAllCarTriage(){
        return searchMapper.getAllCarTriage();
    }
    public List<CarTriage> getCarTriageList(String sido, String gungu){
        return searchMapper.getCarTriageList(sido, gungu);
    }
    public List<Clinic> getAllClinic(){
        return searchMapper.getAllClinic();
    }
    public List<Clinic> getClinicList(String sido, String gungu){
        return searchMapper.getClinicList(sido, gungu);
    }
    public List<Hospital> getAllHospital(){
        return searchMapper.getAllHospital();
    }
    public List<Hospital> getHospitalList(String sido, String gungu){
        return searchMapper.getHospitalList(sido, gungu);
    }
    public List<Triage> getAllTriage(){
        return searchMapper.getAllTriage();
    }
    public List<Triage> getTriageList(String sido, String gungu){
        return searchMapper.getTriageList(sido, gungu);
    }
}
