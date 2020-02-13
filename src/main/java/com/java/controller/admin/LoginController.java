package com.java.controller.admin;

import com.java.pojo.User;
import com.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    /**
     * 用户登录
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "admin/login/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam String uName, @RequestParam String password, HttpSession session, Model model) {
        User user = userService.login(uName);
        if (user != null) {
            if (user.getPassword().equals(password)) {
                //登录成功
                session.setAttribute("currentUser", user);
                //往session里面传值，指定参数名称
                return "admin/login/loginSuccess";
            } else {
                model.addAttribute("message", "登录失败");//这是传错误信息到前台
                return "admin/login/login";//这个地方要改一下
            }
        } else {
            model.addAttribute("message", "你输入的用户名或密码有误");
            return "admin/login/login";
        }
    }

    @RequestMapping("/loginout")
    public String loginout(HttpSession session) {
        session.invalidate();    // 获取session信息，使session信息失效，直接返回登录界面，并连接跳转。
        return "redirect:login";
    }
}
