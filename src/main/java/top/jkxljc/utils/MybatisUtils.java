package top.jkxljc.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * @author MediaLiu
 * @Classname MybatisUtils
 * @Description TODO
 * @Date 2021/1/1 23:06
 * @Version V1.0
 * SqlSessionFactory--->Session
 */
public class MybatisUtils {
    public static SqlSessionFactory sqlSessionFactory;
    static {
        try {
            String resource = "./mybatis/mybatis-config.xml";
            InputStream  inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
/** 既然有了 SqlSessionFactory，顾名思义，我们可以从中获得 SqlSession 的实例。
SqlSession 提供了在数据库执行 org.apache.ibatis.jdbc.SQL 命令所需的所有方法。
你可以通过 SqlSession 实例来直接执行已映射的 SQL 语句。
 */
  public static SqlSession getSession(){
      return sqlSessionFactory.openSession(true);
  }
}
