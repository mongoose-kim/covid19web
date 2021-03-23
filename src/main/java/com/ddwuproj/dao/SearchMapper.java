package com.ddwuproj.dao;

import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.dto.Clinic;
import com.ddwuproj.dto.Hospital;
import com.ddwuproj.dto.Triage;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface SearchMapper {
    public List<CarTriage> getAllCarTriage();
    public List<CarTriage> getCarTriageList(String sido, String gungu);
    public List<Clinic> getAllClinic();
    public List<Clinic> getClinicList(String sido, String gungu);
    public List<Hospital> getAllHospital();
    public List<Hospital> getHospitalList(String sido, String gungu);
    public List<Triage> getAllTriage();
    public List<Triage> getTriageList(String sido, String gungu);
}
