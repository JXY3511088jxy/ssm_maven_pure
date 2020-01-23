package com.java.controller.admin;


import com.java.pojo.User;
import com.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("listusers")
    public String listusers(Model model){
        List<User> userList = userService.findUsers();
        model.addAttribute("userList",userList);
        return "admin/users/listUser";
    }

    @RequestMapping("addUsers")
    public String addUsers(User user){
        userService.add(user);
        return "redirect:listusers";
    }

    @RequestMapping("deleteUsers")
    public String deleteUsers(int id){
        userService.delete(id);
        return "redirect:listusers";
    }

    @RequestMapping("updatelistUsers")
    public String updatelistUsers(Model model,int id){
        User user = userService.query(id);
        model.addAttribute("user",user);
        return "admin/users/edituser";
    }

    @RequestMapping("updateUsers")
    public String updateUsers(User user){
        userService.update(user);
        return "redirect:listusers";
    }

}
