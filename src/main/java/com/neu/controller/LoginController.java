package com.neu.controller;

import com.neu.model.User;
import com.neu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Resource
    private UserService userService;

    @RequestMapping("/login")
    private String loginPage(){
        return "login";
    }

    @RequestMapping(value="/doLogin")
    public String doLogin(@RequestParam("username") String username, @RequestParam("password") String pwd, HttpServletRequest request, HttpSession session) throws Exception{
        //调用service方法，进行用户匹配
        User user = null;
        if(!username.equals("") && !pwd.equals(""))
            user = userService.login(username, pwd);
        if(null != user){//登录成功
            //放入session
            session.setAttribute("LOGIN_USER", user);
            //页面跳转
            return "redirect:/";
        }else{
            //页面跳转（login.jsp）带出提示信息--转发
            request.setAttribute("error", "用户名或密码不正确");
            return "login";
        }
    }

    @RequestMapping(value="/doLogout")
    public String logout(HttpSession session){
        //清除session
        session.removeAttribute("LOGIN_USER");
        return "redirect:/login";
    }
}
