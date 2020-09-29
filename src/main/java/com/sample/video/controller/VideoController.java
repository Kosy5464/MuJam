package com.sample.video.controller;

import com.sample.video.dto.VideoDto;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class VideoController {

    private VideoService videoService;

    public VideoController(VideoService videoService){
        this.videoService = videoService;
    }

    @GetMapping("/")
    public String home(){
        return "/WEB-INF/index.jsp";
    }

    @GetMapping("/videolist")
    public String videolist(Model model){
        List<VideoDto> videoDtoList = videoService.getVideoList();
        model.addAttribute("videoList",videoDtoList);
        return "video/list";
    }

    @GetMapping("/videoPlay/{no}")
    public String videoPlay(@PathVariable("no") Long id, Model model){
        VideoDto videoDto = videoService.getVideo(id);
        model.addAttribute("videoDto",videoDto);
        return "video/videoPlay";
    }

    @GetMapping("/videoUpload")
    public String upload(){
        return "video/videoUpload";
    }

    @PostMapping("/videpUpload")
    public String upload(VideoDto videoDto){
        videoService.writeVideo(videoDto);
        return "redirect:/videolist";
    }
}
