package com.sample.video.controller;

import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    private VideoService videoService;

    public LoginController(VideoService videoService){
        this.videoService = videoService;
    }

    @GetMapping("/login")
    public String login(Model model){
        return "login/login";
    }
    @GetMapping("/signUp")
    public String signUp(Model model){
        return "login/signUp";
    }
}
