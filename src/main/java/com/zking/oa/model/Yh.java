package com.zking.oa.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;
import java.io.Serializable;

public class Yh implements Serializable {

    private Integer yhbh;

    @NotBlank(message = "用户名不能为空")
    private String yhzh;

    @NotBlank(message = "密码不能为空")
    private String yhmm;

    public Yh(Integer yhbh, String yhzh, String yhmm) {
        this.yhbh = yhbh;
        this.yhzh = yhzh;
        this.yhmm = yhmm;
    }

    public Yh() {
        super();
    }

    public Integer getYhbh() {
        return yhbh;
    }

    public void setYhbh(Integer yhbh) {
        this.yhbh = yhbh;
    }

    public String getYhzh() {
        return yhzh;
    }

    public void setYhzh(String yhzh) {
        this.yhzh = yhzh;
    }

    public String getYhmm() {
        return yhmm;
    }

    public void setYhmm(String yhmm) {
        this.yhmm = yhmm;
    }

    @Override
    public String toString() {
        return "Yh{" +
                "yhbh=" + yhbh +
                ", yhzh='" + yhzh + '\'' +
                ", yhmm='" + yhmm + '\'' +
                '}';
    }
}