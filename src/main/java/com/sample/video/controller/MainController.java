package com.sample.video.controller;

import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.dto.VideoDto;
import com.sample.video.service.SingerService;
import com.sample.video.service.UserService;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {
    private VideoService videoService;
    private UserService userService;
    private SingerService singerService;

    public MainController(VideoService videoService, UserService userService, SingerService singerService){
        this.userService = userService;
        this.videoService = videoService;
        this.singerService = singerService;
    }

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("/main")
    public String hello(Model model){
        List<VideoDto> videoList = videoService.getVideoListByIdDesc();
        List<VideoDto> videoListViewCount = videoService.getVideoListByViewcountDesc();
        List<SingerDto> singerList = new ArrayList();
        List<SingerDto> singerListViewCount = new ArrayList();
        for(VideoDto video : videoList){
            Long id = video.getSingerId();
            singerList.add(singerService.getSingerById(id));
        }
        for(VideoDto video : videoListViewCount){
            Long id = video.getSingerId();
            singerListViewCount.add(singerService.getSingerById(id));
        }
        model.addAttribute("singerList", singerList);
        model.addAttribute("singerListViewCount", singerListViewCount);
        model.addAttribute("videoList",videoList);
        model.addAttribute("videoListViewCount",videoListViewCount);
        
        return "main/main";
    }

    @GetMapping("/new")
    public String NEW(Model model){ return "main/NEW"; }
    @GetMapping("/hot")
    public String HOT(Model model){ return "main/HOT"; }
    @GetMapping("/playList")
    public String playList(Model model){ return "main/playList"; }
    @GetMapping("/like")
    public String like(Model model){ return "main/like"; }
    @GetMapping("/follow")
    public String follow(Model model){ return "main/follow"; }
    @GetMapping("/musician")
    public String musician(Model model){ return "main/musician"; }
    @GetMapping("/backstage")
    public String backstage(Model model){ return "main/backstage"; }

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
