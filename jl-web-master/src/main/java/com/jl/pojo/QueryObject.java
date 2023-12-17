package com.jl.pojo;

public class QueryObject {
    private int offset,limit,currentpage=1,pageSize=5;
    private String addresseePhone,state,q,rolename;
    public int getStart(){
        return (currentpage-1)*pageSize;
    }

    public QueryObject(int offset, int limit, String addresseePhone, String state, String q, String rolename) {
        this.offset = offset;
        this.limit = limit;
        this.addresseePhone = addresseePhone;
        this.state = state;
        this.q = q;
        this.rolename = rolename;
    }

    @Override
    public String toString() {
        return "QueryObject{" +
                "offset=" + offset +
                ", limit=" + limit +
                ", currentpage=" + currentpage +
                ", pageSize=" + pageSize +
                ", addresseePhone='" + addresseePhone + '\'' +
                ", state='" + state + '\'' +
                ", q='" + q + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getAddresseePhone() {
        return addresseePhone;
    }

    public void setAddresseePhone(String addresseePhone) {
        this.addresseePhone = addresseePhone;
    }


    public String getQ() {
        return q;
    }

    public void setQ(String q) {
        this.q = q;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }
}
