package pojo;

import java.util.Date;

public class Manager {
  private int id;
  private String account;
  private String password;
  private String rank;
  private Date shi;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getRank() {
    return rank;
  }

  public void setRank(String rank) {
    this.rank = rank;
  }

  public Date getShi() {
    return shi;
  }

  public void setShi(Date shi) {
    this.shi = shi;
  }
}
