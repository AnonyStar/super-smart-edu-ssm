package com.supsmart.portal.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 首页轮播表(ConstsSiteCarousel)实体类
 *
 * @author makejava
 * @since 2020-03-29 22:37:01
 */
public class ConstsSiteCarousel implements Serializable {
    private static final long serialVersionUID = 760329532509606604L;
    
    private Integer id;
    /**
    * 名称
    */
    private String name;
    /**
    * 图片
    */
    private String picture;
    /**
    * 链接
    */
    private String url;
    /**
    * 权重
    */
    private Integer weight;
    
    private Integer enable;
    
    private Date createTime;
    
    private String createUser;
    
    private Date updateTime;
    
    private String updateUser;
    
    private Integer del;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }

}