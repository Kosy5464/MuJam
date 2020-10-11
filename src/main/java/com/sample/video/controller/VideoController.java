package com.sample.video.controller;

import com.sample.video.dto.VideoDto;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class VideoController {

    private VideoService videoService;

    public VideoController(VideoService videoService){
        this.videoService = videoService;
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
        System.out.println(videoDto);
        videoDto.setViewcount(videoDto.getViewcount()+1);
        model.addAttribute("videoDto",videoDto);
        videoService.writeVideo(videoDto);
        return "video/videoPlay";
    }

    @GetMapping("/videoUpload")
    public String upload(){
        return "video/videoUpload";
    }

    @PostMapping("/videoUploadFile")
    public String upload(@RequestParam("title") String title, @RequestParam("content") String content,
                         @RequestParam("genre1") String genre1, @RequestParam("genre2") String genre2,
                         @RequestParam("video_upload") MultipartFile videoFile,
                         @RequestParam("thumbnail_upload") MultipartFile thumbnailFile){
        VideoDto videoDto = videoService.uploadVideo(title,content,genre1,genre2,videoFile,thumbnailFile);

        videoService.writeVideo(videoDto);
        return "redirect:/main";
    }
}
