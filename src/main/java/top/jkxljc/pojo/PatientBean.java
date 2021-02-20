package top.jkxljc.pojo;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PatientBean implements Serializable{

  private int patientId;
  private String patientName;
  private int patientGender;
  private int patientAge;
  private String patientTel;
  private String patientAddress;

}
