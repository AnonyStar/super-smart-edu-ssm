package com.supsmart.portal.vo;

import com.supsmart.portal.entity.ConstsClassify;
import com.supsmart.portal.entity.Course;
import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * @author: anonystar
 * @time: 2020/3/26 21:09
 */
@Data
@ToString
public class ConstsClassifyVO extends ConstsClassify {

    //子类目分类
    private List<ConstsClassify> classifyList;

    //推荐课程
    private List<Course> courses;


}
