package com.ddwuproj.dao;

import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;

@Component
@Mapper
public interface SearchMapper {
    public List<CarTriage> getCarTriageList(HashMap<String,Object> paraMap);
    public List<Clinic> getClinicList(HashMap<String,Object> paraMap);
    public List<Hospital> getHospitalList(String sido, String gungu, String type);
    public List<Triage> getTriageList(HashMap<String,Object> paraMap);
}
