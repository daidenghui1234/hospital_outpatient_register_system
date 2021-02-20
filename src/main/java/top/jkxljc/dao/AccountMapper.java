package top.jkxljc.dao;

import org.apache.ibatis.annotations.Param;
import top.jkxljc.pojo.AccountBean;

/**
 * @author MediaLiu
 * @Classname AccountMapper
 * @Description TODO
 * @Date 2021/1/5 10:44
 * @Version V1.0
 */
@SuppressWarnings("all")//抑制警告
public interface AccountMapper {
    AccountBean login(@Param("uname") String uname, @Param("upassword") String upassword,@Param("type") Integer type);
}
