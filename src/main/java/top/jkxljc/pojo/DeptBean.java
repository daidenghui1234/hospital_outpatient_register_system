package top.jkxljc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DeptBean implements Serializable{

  private int deptId;
  private String deptName;
  private String deptDesc;

}
