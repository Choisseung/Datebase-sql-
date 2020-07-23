package com.zhongruan.controller;

import com.zhongruan.bean.PageInfo;
import com.zhongruan.bean.User;
import com.zhongruan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

@RequestMapping("/user")
//实现登录成功或失败跳转页面的功能
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")//指定请求的URL 在user拦截
    public ModelAndView login(User user){
        int id = userService.login(user.getUsername(), user.getPassword());
        ModelAndView mv = new ModelAndView();
        //跳转页面
        if (id!=-1){
            mv.setViewName("main");
        }else {
            mv.setViewName("../failer");
        }
        return mv;
    }

//    @RequestMapping("/findAll.do")
//    public ModelAndView findAll(){
//        List<User> users = userService.findAll();
//        ModelAndView mv = new ModelAndView();
//        mv.addObject("users",users);
//        mv.setViewName("user-list");
//        return mv;
//    }
    @RequestMapping("/findAll.do")
    //分页功能
    public ModelAndView findAll(@RequestParam(defaultValue = "1")int currentPage, String username,
                                @RequestParam(defaultValue = "0")int type, HttpSession session){
        if (type==1){
            session.setAttribute("searchName",username);
        }else {
            username=(String) session.getAttribute("searchName");

        }
        PageInfo<User> pageInfo = userService.findAll(currentPage, username);
        ModelAndView mv= new ModelAndView();
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("user-list");
        return mv;
    }

    @RequestMapping("/add.do")
    public String add(User user){
        userService.add(user);
        return "redirect:findAll.do";

    }

    @RequestMapping("/deleteById.do")
    public String delete(int id){
        userService.deleteById(id);
        return "redirect:findAll.do";
    }

    @RequestMapping("/toUpdate.do")
    public ModelAndView toUpdate(int id){
        User user = userService.selectUserById(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user-update");
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping("/update.do")
    public String update(User user){
        userService.update(user);
        return "redirect:findAll.do";
    }
}
