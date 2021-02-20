package top.jkxljc.utils;
import java.util.UUID;

/**
 * @author MediaLiu
 * @Classname UUIDutils
 * @Description TODO
 * @Date 2021/1/5 0:00
 * @Version V1.0
 */
@SuppressWarnings("all")//抑制警告
public class UUIDutils {
    public static String getUUID(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }
}
