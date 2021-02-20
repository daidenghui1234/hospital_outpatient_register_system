package top.jkxljc.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.jkxljc.dao.Patient_Register_Dao;
import top.jkxljc.pojo.Patient_Register_Bean;

import java.util.List;

/**
 * @Created : 代登辉
 * @Date : 2021/1/5 17:46
 * @Description : 作用
 */

@Service
public class Patient_Register_Service {
    @Autowired
    private Patient_Register_Dao dao;

    public List<Patient_Register_Bean> findAll(){
        return dao.findAll();
    }
    public Patient_Register_Bean findByRegisterId(int id){
        return dao.findByRegisterId(id);
    }

    public void treatment(int doctorId,int registerId, String recordSick,String recordSymptoms,String recordMedicine){
        dao.treatment(doctorId,registerId, recordSick, recordSymptoms, recordMedicine);
    }

    public List<Patient_Register_Bean> findAllByDoctorId(int doctorId){
        return dao.findAllByDoctorId(doctorId);
    }

    public void deleteRegisterId(int id){
         dao.deleteRegisterId(id);
    }
}
