package top.jkxljc.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.jkxljc.dao.DoctorMapper;
import top.jkxljc.pojo.DoctorBean;
import top.jkxljc.pojo.RegisterBean;

import java.util.List;

/**
 * @Created : 代登辉
 * @Date : 2021/1/6 10:30
 * @Description : 作用
 */

@Service
public class DoctorService {
    @Autowired
    private DoctorMapper dao;

    public List<DoctorBean> findDoctor(int patientId,int postId,int deptId){
        return dao.findDoctor(patientId,postId,deptId);
    }
    public boolean addRegister(int doctorId, int patientId){
        return dao.addRegister(doctorId,patientId);
    }
    public List<RegisterBean> findIsRegisters(int patientId){
        return dao.findIsRegisters(patientId);
    }
}
