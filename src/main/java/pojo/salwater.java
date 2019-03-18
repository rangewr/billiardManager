package pojo;

import java.util.Date;

public class salwater {
  private int id;
  private double price;
  private String man;
  private Date seltime;
  private int taihao;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
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

  public Date getSeltime() {
    return seltime;
  }

  public void setSeltime(Date seltime) {
    this.seltime = seltime;
  }

  public int getTaihao() {
    return taihao;
  }

  public void setTaihao(int taihao) {
    this.taihao = taihao;
  }
}
