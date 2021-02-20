package top.jkxljc.pojo;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecordBean implements Serializable{

  private int recordId;
  private int registerId;
  private String recordTime;
  private String recordSick;
  private String recordSymptoms;
  private String recordMedicine;

}
