package com.supsmart.portal.controller;

import com.supsmart.portal.entity.Course;
import com.supsmart.portal.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 课程表(Course)表控制层
 *
 * @author makejava
 * @since 2020-03-22 22:25:08
 */
@RestController
@RequestMapping("course")
public class CourseController {
    /**
     * 服务对象
     */
    @Autowired
    private CourseService courseService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Course selectOne(Integer id) {
        return this.courseService.queryById(id);
    }

}