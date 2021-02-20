package top.jkxljc.pojo;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegisterBean implements Serializable{

  private int registerId;
  private int doctorId;
  private int patientId;
  private int registerStatus;
  private String registerTime;

}
