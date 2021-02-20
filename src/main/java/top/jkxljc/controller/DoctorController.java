package top.jkxljc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import top.jkxljc.pojo.DeptBean;
import top.jkxljc.pojo.DoctorBean;
import top.jkxljc.pojo.RegisterBean;
import top.jkxljc.service.DeptService;
import top.jkxljc.service.DoctorService;

import java.util.List;
import java.util.Random;

/**
 * @Created : 代登辉
 * @Date : 2021/1/6 10:33
 * @Description : 作用
 */

@Controller
@RequestMapping("")
public class DoctorController {
    @Autowired
    private DoctorService service;

    @RequestMapping("findAll_Doctors")
    public String findDoctor(int patientId,int postId,int deptId,Model model){
        List<DoctorBean> doctorBeans = service.findDoctor(patientId,postId,deptId);
        int len = doctorBeans.size();
        Random random = new Random();
        int i = random.nextInt(len);
        DoctorBean doctorBean = doctorBeans.get(i);
        model.addAttribute("doctorBeans",doctorBean);
        return "redirect:ADDRegister?doctorId="+doctorBean.getDoctorId()+"&patientId="+patientId;
    }
    @RequestMapping("ADDRegister")
    public String addRegister(int doctorId, int patientId,Model model){

        boolean isRegisters = findIsRegisters(patientId);

        if(isRegisters == true){
            model.addAttribute("b",false);
        }else {
            boolean b = service.addRegister(doctorId, patientId);
            model.addAttribute("b",b);
        }
        return "redirect:Register/list?id="+patientId;
    }

    boolean findIsRegisters(int patientId){
        List<RegisterBean> isRegisters = service.findIsRegisters(patientId);
        if (isRegisters.isEmpty())
            return false;
        else
            return true;
    }
// 查询医生
//查询挂号记录
}
