package top.jkxljc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import top.jkxljc.service.RegisterService;

/**
 * @author MediaLiu
 * @Classname RegisterController
 * @Description TODO
 * @Date 2021/1/7 16:48
 * @Version V1.0
 */

@Controller
@RequestMapping("/AddUser/")
public class RegisterController {
    @Autowired
    private RegisterService service;
    @RequestMapping("add")
    public void findDept(String PatientName, int PatientGender, int patientAge, String patientTel, String patientAddress,String accountName,String accountPassword,Model model){
        int patientId=0;
        try {
            service.getPatientById(PatientName, patientTel);
        } catch (Exception e) {
            e.printStackTrace();
            service.addPatient(PatientName,PatientGender,patientAge,patientTel,patientAddress);
            patientId = service.getPatientById(PatientName, patientTel);
            service.addRegister(patientId,accountName,accountPassword);
            model.addAttribute("patientId",patientId);
        }

    }
}
