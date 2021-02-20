package top.jkxljc.dao;

import org.apache.ibatis.annotations.Param;
import top.jkxljc.pojo.RegisterBean;

/**
 * @author MediaLiu
 * @Classname RegisterMapper
 * @Description TODO
 * @Date 2021/1/5 10:47
 * @Version V1.0
 */

public interface RegisterMapper {

    void addPatient(@Param("patientName")String PatientName,
                    @Param("patientGender")int PatientGender,
                    @Param("patientAge")int patientAge,
                    @Param("patientTel")String patientTel,
                    @Param("patientAddress")String patientAddress);

    int getPatientById(@Param("PatientName")String PatientName,
                       @Param("patientTel")String patientTel);

    void addRegister(@Param("accountNum")int accountNum,
                     @Param("accountName")String accountName,
                     @Param("accountPassword")String accountPassword);
}
