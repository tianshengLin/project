package com.jl.pojo;

public class User {
    private String phone,password,email,rolename,name,time;
    private Integer id,roletype,state;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", rolename='" + rolename + '\'' +
                ", name='" + name + '\'' +
                ", time='" + time + '\'' +
                ", id=" + id +
                ", roletype=" + roletype +
                ", state=" + state +
                '}';
    }

    public User(String phone, String time, String password, String email, String rolename, String name, Integer id, Integer roletype, Integer state) {
        this.phone = phone;
        this.time = time;
        this.state = state;
        this.password = password;
        this.email = email;
        this.rolename = rolename;
        this.name = name;
        this.id = id;
        this.roletype = roletype;
    }

    public String getState() {
        if(state==0)
            return "离职";
        else
            return "在岗";
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoletype() {
        return roletype;
    }

    public void setRoletype(Integer roletype) {
        this.roletype = roletype;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
