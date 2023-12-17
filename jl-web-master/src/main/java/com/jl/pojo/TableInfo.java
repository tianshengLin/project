package com.jl.pojo;

import java.util.List;

public class TableInfo {
    private long total;
    private List rows;

    public TableInfo() {
    }

    @Override
    public String toString() {
        return "TableInfo{" +
                "totle=" + total +
                ", rows=" + rows +
                '}';
    }

    public TableInfo(long total, List rows) {
        this.total = total;
        this.rows = rows;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long totle) {
        this.total = totle;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
