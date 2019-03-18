package pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

public class turnover {
  private String laiyuan;
  private int taihao;
  private double price;
  private String man;

  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Date shi;

  public String getLaiyuan() {
    return laiyuan;
  }

  public void setLaiyuan(String laiyuan) {
    this.laiyuan = laiyuan;
  }

  public int getTaihao() {
    return taihao;
  }

  public void setTaihao(int taihao) {
    this.taihao = taihao;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public String getMan() {
    return man;
  }

  public void setMan(String man) {
    this.man = man;
  }

  public Date getShi() {
    return shi;
  }

  public void setShi(Date shi) {
    this.shi = shi;
  }
}
