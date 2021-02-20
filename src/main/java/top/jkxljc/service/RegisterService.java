package top.jkxljc.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.jkxljc.dao.RegisterMapper;
import top.jkxljc.pojo.RegisterBean;

/**
 * @Created : 代登辉
 * @Date : 2021/1/6 11:43
 * @Description : 作用
 */
@Service
public class RegisterService {
    @Autowired
    private RegisterMapper dao;
    public void addPatient(String PatientName, int PatientGender, int patientAge, String patientTel, String patientAddress){
        dao.addPatient(PatientName,PatientGender,patientAge,patientTel,patientAddress);
    }

    public int getPatientById(String PatientName, String patientTel){
        return dao.getPatientById(PatientName,patientTel);
    }

    public void addRegister(int accountNum, String accountName,String accountPassword){
        dao.addRegister(accountNum,accountName,accountPassword);
    }
}
