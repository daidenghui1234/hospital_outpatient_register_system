package top.jkxljc.dao;

import org.apache.ibatis.annotations.Param;
import top.jkxljc.pojo.DoctorBean;
import top.jkxljc.pojo.RegisterBean;

import java.util.List;

/**
 * @author MediaLiu
 * @Classname DoctorMapper
 * @Description TODO
 * @Date 2021/1/5 0:45
 * @Version V1.0
 */
public interface DoctorMapper {
    List<DoctorBean> findDoctor(@Param("patientId")int patientId, @Param("postId")int postId, @Param("deptId")int deptId);
    boolean addRegister(@Param("doctorId")int doctorId,@Param("patientId") int patientId);
    List<RegisterBean> findIsRegisters(@Param("patientIId") int patientId);

}
