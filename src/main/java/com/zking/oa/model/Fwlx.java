package com.zking.oa.model;

public class Fwlx {
    private Integer lxbh;

    private String lxmc;

    private Integer lx;

    public Fwlx(Integer lxbh, String lxmc,Integer lx) {
        this.lxbh = lxbh;
        this.lxmc = lxmc;
        this.lx = lx;
    }

    public Fwlx() {
        super();
    }

    public Integer getLxbh() {
        return lxbh;
    }

    public void setLxbh(Integer lxbh) {
        this.lxbh = lxbh;
    }

    public String getLxmc() {
        return lxmc;
    }

    public void setLxmc(String lxmc) {
        this.lxmc = lxmc;
    }

    public Integer getLx() {
        return lx;
    }

    public void setLx(Integer lx) {
        this.lx = lx;
    }

    @Override
    public String toString() {
        return "Fwlx{" +
                "lxbh=" + lxbh +
                ", lxmc='" + lxmc + '\'' +
                ", lx=" + lx +
                '}';
    }
}