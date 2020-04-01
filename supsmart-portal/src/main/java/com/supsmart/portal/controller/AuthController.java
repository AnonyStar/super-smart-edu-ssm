package com.supsmart.portal.controller;

import com.supsmart.bean.auth.AuthUser;
import com.supsmart.common.vo.ResponInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: anonystar
 * @time: 2020/3/24 23:11
 */
@Controller
@RequestMapping("auth")
public class AuthController {

    @RequestMapping("register")
    public String register(){
        return "auth/register";
    }

    @ResponseBody
    @RequestMapping("doRegister")
    public ResponInfo doRegister(){
        ResponInfo.ResponInfoBuilder builder = ResponInfo.builder();
        builder.errcode(0);
        builder.message("注册成功");
        return builder.build();
    }

    @RequestMapping("login")
    public String login(){
        return "auth/login";
    }

    @RequestMapping("/doLogin")
    public ModelAndView doLogin(AuthUser user){
        ModelAndView mv = new ModelAndView();
        System.out.println(user);
        mv.setViewName("/user/home");
        return mv;
    }

}
