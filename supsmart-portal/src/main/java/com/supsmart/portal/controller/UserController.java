package com.supsmart.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: anonystar
 * @time: 2020/3/25 20:41
 */
@Controller
@RequestMapping("user")
public class UserController {

    @RequestMapping("home")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/home");

        return mv;
    }


}
