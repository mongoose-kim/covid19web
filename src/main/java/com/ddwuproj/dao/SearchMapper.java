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
    public List<CarTriage> getCarTriageSidoList(String sido);
    public List<CarTriage> getCarTriageList(String sido, String gungu);
    public List<Clinic> getAllClinic();
    public List<Clinic> getClinicSidoList(String sido);
    public List<Clinic> getClinicList(String sido, String gungu);
    public List<Hospital> getAllHospital();
    public List<Hospital> getHospitalSidoList(String sido);
    public List<Hospital> getHospitalList(String sido, String gungu);
    public List<Triage> getAllTriage();
    public List<Triage> getTriageSidoList(String sido);
    public List<Triage> getTriageList(String sido, String gungu);
}
