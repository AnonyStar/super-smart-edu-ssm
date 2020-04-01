package com.supsmart.portal.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 课程类别表(ConstsClassify)实体类
 *
 * @author makejava
 * @since 2020-03-26 20:52:33
 */
public class ConstsClassify implements Serializable {
    private static final long serialVersionUID = 535049941369263360L;
    
    private Integer id;
    /**
    * 名称
    */
    private String name;
    
    private String code;
    /**
    * 父级别code
    */
    private String parentCode;
    /**
    * 排序
    */
    private Integer sort;
    
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
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