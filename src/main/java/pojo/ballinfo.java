package pojo;

import java.util.Date;

public class ballinfo {
  private int tableid;
  private String state;
  private Date otime;
  private Date ctime;

  public int getTableid() {
    return tableid;
  }

  public void setTableid(int tableid) {
    this.tableid = tableid;
  }

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public Date getOtime() {
    return otime;
  }

  public void setOtime(Date otime) {
    this.otime = otime;
  }

  public Date getCtime() {
    return ctime;
  }

  public void setCtime(Date ctime) {
    this.ctime = ctime;
  }
}
