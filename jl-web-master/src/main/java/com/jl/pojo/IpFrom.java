package com.jl.pojo;

public class IpFrom {
    private String ip,Operate,date;
    private Integer id,userid;

    public IpFrom() {
    }

    public IpFrom(Integer id,String ip, String operate, String date,  Integer userid) {
        this.ip = ip;
        Operate = operate;
        this.date = date;
        this.id = id;
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "IpFrom{" +
                "ip='" + ip + '\'' +
                ", Operate='" + Operate + '\'' +
                ", date='" + date + '\'' +
                ", id=" + id +
                ", userid=" + userid +
                '}';
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getOperate() {
        return Operate;
    }

    public void setOperate(String operate) {
        Operate = operate;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}
