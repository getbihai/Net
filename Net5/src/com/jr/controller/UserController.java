package com.jr.controller;


import com.jr.domain.Users;
import com.jr.service.UserService;
import com.jr.util.MD5Util;

import org.apache.log4j.Logger;
//import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
    private UserService userService;
    /**
     * 登录
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public String login(Users user, HttpServletRequest request) {
    	
    	Logger logger = Logger.getLogger("UserController-login");
    	logger.debug("日志输出成功");
    	
        try {
            String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
            user.setPassword(MD5pwd);
        } catch (Exception e) {
            user.setPassword("");
        }
        Users resultUser = userService.login(user);
        if (resultUser == null) {
            request.setAttribute("user", user);
            request.setAttribute("errorMsg", "请认真核对账号、密码！");
            return "login";
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", resultUser);
//            return "redirect:/book/allBook";
            return "redirect:/home/home";
        }
    }

}
