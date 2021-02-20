package top.jkxljc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import top.jkxljc.dao.PatientMapper;
import top.jkxljc.pojo.Patient_Register_Bean;
import top.jkxljc.service.Patient_Register_Service;

import java.util.List;

/**
 * @Created : 代登辉
 * @Date : 2021/1/5 17:53
 * @Description : 作用
 */

@Controller
@RequestMapping("/Register/")
public class Patient_Register_Controller {
    @Autowired
    private Patient_Register_Service service;

    @RequestMapping("findAll_Register")
    public String findAll(Model model){
        List<Patient_Register_Bean> register = service.findAll();
        model.addAttribute("AdminRegister",register);
        return "admin/patient_management";
    }

    @RequestMapping("findAll_RegisterByDoctorId")
    public String findAllByDoctorId(int doctorId,Model model){
        List<Patient_Register_Bean> register = service.findAllByDoctorId(doctorId);
        model.addAttribute("register",register);
        return "doctor/patient_management";
    }

    // findByRegisterId
    @RequestMapping("findRegister")
    public String findByRegisterId(int id,Model model){
        Patient_Register_Bean register = service.findByRegisterId(id);
        model.addAttribute("registers",register);
        return "doctor/treatment";
    }

    @RequestMapping("treatment")
    public String treatment(int doctorId,int registerId, String recordSick,String recordSymptoms,String recordMedicine){
        service.treatment(doctorId,registerId, recordSick, recordSymptoms, recordMedicine);
        return "redirect:findAll_RegisterByDoctorId?doctorId="+doctorId;
    }
//    @RequestMapping("findRegisterById")
//    public String findByRegister(int id,Model model){
//        Patient_Register_Bean register = service.findByRegisterId(id);
//        model.addAttribute("registera",register);
//        return "patient/list";
//    }
    @RequestMapping("list")
    public String registerList(int id,Model model){
        Patient_Register_Bean register = service.findByRegisterId(id);
        model.addAttribute("registera",register);
        return "patient/list";
    }


    // findByRegisterId
    @RequestMapping("DeleteRegister")
    public String deleteRegisterId(int id,Model model){
        service.deleteRegisterId(id);
        model.addAttribute("flag",true);
        return "redirect:findAll_Register";
    }
}
