package top.jkxljc.pojo;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DoctorBean implements Serializable{

  private int doctorId;
  private int postId;
  private int deptId;
  private String doctorName;
  private int doctorGender;
  private int doctorAge;
  private String doctorTel;
  private String doctorAddress;
  private String doctorEmail;

  public int getDoctorId() {
    return doctorId;
  }

  public void setDoctorId(int doctorId) {
    this.doctorId = doctorId;
  }

  public int getPostId() {
    return postId;
  }

  public void setPostId(int postId) {
    this.postId = postId;
  }

  public int getDeptId() {
    return deptId;
  }

  public void setDeptId(int deptId) {
    this.deptId = deptId;
  }

  public String getDoctorName() {
    return doctorName;
  }

  public void setDoctorName(String doctorName) {
    this.doctorName = doctorName;
  }

  public int getDoctorGender() {
    return doctorGender;
  }

  public void setDoctorGender(int doctorGender) {
    this.doctorGender = doctorGender;
  }

  public int getDoctorAge() {
    return doctorAge;
  }

  public void setDoctorAge(int doctorAge) {
    this.doctorAge = doctorAge;
  }

  public String getDoctorTel() {
    return doctorTel;
  }

  public void setDoctorTel(String doctorTel) {
    this.doctorTel = doctorTel;
  }

  public String getDoctorAddress() {
    return doctorAddress;
  }

  public void setDoctorAddress(String doctorAddress) {
    this.doctorAddress = doctorAddress;
  }

  public String getDoctorEmail() {
    return doctorEmail;
  }

  public void setDoctorEmail(String doctorEmail) {
    this.doctorEmail = doctorEmail;
  }
}
