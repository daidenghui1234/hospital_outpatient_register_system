package top.jkxljc.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.jkxljc.pojo.AccountBean;
import top.jkxljc.service.AccountService;

import javax.servlet.http.HttpSession;

/**
 * @author MediaLiu
 * @Classname AccountController
 * @Description TODO
 * @Date 2021/1/5 14:55
 * @Version V1.0
 */
@Controller
@RequestMapping("/account/")
public class AccountController {
    @Autowired
    private AccountService service;
    /**登录
     * @param username
     * @param pwd
     * @param session
     * @return
     */
    @RequestMapping("login")
//    不跳转转json
    @ResponseBody
    public AccountBean login(String username, String pwd, int type, HttpSession session){
        AccountBean bean = service.login(username, pwd, type, session);
        if (bean!=null){

            return bean;
        }
            return null;
    }
}
