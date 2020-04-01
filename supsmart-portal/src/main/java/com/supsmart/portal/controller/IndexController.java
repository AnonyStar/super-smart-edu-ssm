package com.supsmart.portal.controller;

import com.supsmart.portal.entity.ConstsSiteCarousel;
import com.supsmart.portal.service.ConstsClassifyService;
import com.supsmart.portal.service.ConstsSiteCarouselService;
import com.supsmart.portal.vo.ConstsClassifyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author: anonystar
 * @time: 2020/3/22 21:12
 */
@Controller
public class IndexController {

    @Autowired
    private ConstsClassifyService constsClassifyService;
    @Autowired
    private ConstsSiteCarouselService constsSiteCarouselService;

    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        //1.查询需要的分类目录
        List<ConstsClassifyVO> classifyVOS = constsClassifyService.queryAllCategroy();
        mv.addObject("categroys",classifyVOS);
        //2.获取轮播图片集合
        List<ConstsSiteCarousel> sites = constsSiteCarouselService.queryAll();
        mv.addObject("sites",sites);
        //3.实战推荐

        //4.免费好课

        //5.Java开发工程师

        //6.名校讲师
        mv.setViewName("index");
        return mv;
    }


}
