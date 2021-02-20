package top.jkxljc.dao;

import org.apache.ibatis.annotations.Param;
import top.jkxljc.pojo.Patient_Register_Bean;

import java.util.List;
public interface Patient_Register_Dao {
    List<Patient_Register_Bean> findAll();
    List<Patient_Register_Bean> findAllByDoctorId(@Param("doctorId")int doctorId);
    Patient_Register_Bean findByRegisterId(int id);
    void deleteRegisterId(@Param("IId")int id);
    void treatment(@Param("doctorId")int doctorId,@Param("registerId") int registerId, @Param("recordSick") String recordSick, @Param("recordSymptoms") String recordSymptoms, @Param("recordMedicine") String recordMedicine);

}
