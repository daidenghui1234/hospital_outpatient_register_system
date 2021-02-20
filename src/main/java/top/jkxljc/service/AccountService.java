package top.jkxljc.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.jkxljc.dao.AccountMapper;
import top.jkxljc.pojo.AccountBean;
import top.jkxljc.utils.ResultInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author MediaLiu
 * @Classname AccountService
 * @Description TODO
 * @Date 2021/1/5 14:49
 * @Version V1.0
 */
@Service
public class AccountService {
    @Autowired
    private AccountMapper dao;
    /**登录，登录成功将用户信息保存在会话session中
     * @param name
     * @param psw
     * @param session
     * @return
     */
    public AccountBean login(String name, String psw,Integer type,HttpSession session) {
        AccountBean account = dao.login(name, psw,type);
        if (null!=account){//登录成功
//            session.setAttribute("type",type);
            session.setAttribute("account",account);

            return account;
        }
        else{


            return null;
        }

    }
}
