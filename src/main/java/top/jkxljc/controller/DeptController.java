package top.jkxljc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.jkxljc.pojo.DeptBean;
import top.jkxljc.pojo.DoctorBean;
import top.jkxljc.service.DeptService;

import java.util.List;

/**
 * @author MediaLiu
 * @Classname DeptController
 * @Description TODO
 * @Date 2021/1/5 21:58
 * @Version V1.0
 */
@Controller
//@RequestMapping("dep")
public class DeptController {
    @Autowired
    private DeptService service;
    @RequestMapping("/dept/showAll")
       public String showAll(Model model){
        List<DeptBean> list = service.findAll();
        model.addAttribute("list",list);
        return "admin/department_management";
       }
    @RequestMapping("/dept/add")
    public String add(DeptBean deptBean){
        service.addDept(deptBean);
        return "redirect:showAll";
    }
    @RequestMapping("/dept/isExistName")
    @ResponseBody
    public boolean isExistId(String deptName){
        DeptBean existId = service.isExistName(deptName);
        return existId!=null;
    }
    @RequestMapping("/dept/update")
      public String updateDept(DeptBean deptBean){
        service.updateDept(deptBean);
        return "redirect:/dept/showAll";
    }
    /**根据主键查询科室
     * @param deptId
     * @param model
     * @return
     *
     */
    @RequestMapping("/dept/findOne")
    public String findDeptById(int deptId,Model model){
        DeptBean deptById = service.findDeptById(deptId);
        model.addAttribute("deptObject",deptById);
        return "admin/edit";
    }
    @RequestMapping("/dept/del")
    public String delDept(int deptId){
        service.delDept(deptId);
        return "redirect:/dept/showAll";
    }
    @RequestMapping("findAll_Dept")
    public String findDept(Model model){
        List<DeptBean> deptList = service.findAll();
        model.addAttribute("deptList",deptList);
        return "patient/register_management";
    }
}
