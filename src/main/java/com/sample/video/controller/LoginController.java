package com.sample.video.controller;

import com.sample.video.dto.UserDto;
import com.sample.video.service.UserService;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private UserService userService;

    public LoginController(UserService userService){
        this.userService = userService;
    }

    @GetMapping("/login")
    public String login(Model model){
        return "login/login";
    }
    @GetMapping("/signUp")
    public String signUp(Model model){
        return "login/signUp";
    }
    @GetMapping("/logout")
    public String logout(HttpServletRequest req){
        req.getSession().invalidate();
        return "redirect:/main";
    }
    @PostMapping("/submitSignUp")
    public String submitSignUp(UserDto user){
        userService.writeUser(user);
        return "redirect:/main";
    }

    @PostMapping("/idCheck")
    @ResponseBody
    public int idCheck(String userId){
        System.out.println(userId);
        UserDto user = userService.getUser(userId);
        if(user == null){
            return 0;
        }
        else{
            return 1;
        }
    }
    @PostMapping("/submitLogin")
    public String submitLogin(@RequestParam("userId") String userId,
                              @RequestParam("password") String password,
                              HttpServletRequest req){
        UserDto user = userService.getUser(userId);
        HttpSession session = req.getSession();
        //존재하지 않는 id
        if(user == null){
            req.setAttribute("msg1","아이디가 존재하지 않습니다.");
            return "login/login";
        }
        //id 존재
        else{
            //비밀번호 일치
            if(user.getPassword().equals(password)){
                session.setAttribute("user",user);
                return "redirect:/main";
            }
            //불일치
            else{
                req.setAttribute("msg2","비밀번호가 일치하지 않습니다.");
                return "login/login";
            }
        }
    }
}

