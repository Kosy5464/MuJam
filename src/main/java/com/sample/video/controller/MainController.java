package com.sample.video.controller;

import com.sample.video.dto.VideoDto;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainController {
    private VideoService videoService;

    public MainController(VideoService videoService){
        this.videoService = videoService;
    }

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("/main")
    public String hello(Model model){
        List<VideoDto> videoList = videoService.getVideoList();
        model.addAttribute("videoList",videoList);
        
        return "main/main";
    }

    @GetMapping("/contact")
    public String contact(Model model){
        return "main/contact";
    }
    @GetMapping("/gallery")
    public String gallery(Model model){
        return "main/gallery";
    }
    @GetMapping("/generic")
    public String generic(Model model){
        return "main/generic";
    }

    @GetMapping("/single")
    public String single(Model model){ return "main/single"; }
    //test
    //test2


}
