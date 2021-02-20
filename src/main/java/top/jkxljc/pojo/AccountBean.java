package top.jkxljc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountBean implements Serializable{

  private int accountId;
  private String accountName;
  private String accountPassword;
  private int accountStatus;
  private int accountType;
  private int accountNum;

  public int getAccountId() {
    return accountId;
  }

  public void setAccountId(int accountId) {
    this.accountId = accountId;
  }

  public String getAccountName() {
    return accountName;
  }

  public void setAccountName(String accountName) {
    this.accountName = accountName;
  }

  public String getAccountPassword() {
    return accountPassword;
  }

  public void setAccountPassword(String accountPassword) {
    this.accountPassword = accountPassword;
  }

  public int getAccountStatus() {
    return accountStatus;
  }

  public void setAccountStatus(int accountStatus) {
    this.accountStatus = accountStatus;
  }

  public int getAccountType() {
    return accountType;
  }

  public void setAccountType(int accountType) {
    this.accountType = accountType;
  }

  public int getAccountNum() {
    return accountNum;
  }

  public void setAccountNum(int accountNum) {
    this.accountNum = accountNum;
  }
}
