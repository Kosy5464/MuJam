package com.sample.video.controller;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.User;
import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.dto.VideoDto;
import com.sample.video.service.SingerService;
import com.sample.video.service.UserService;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class VideoController {

    private VideoService videoService;
    private SingerService singerService;
    private UserService userService;
    public VideoController(VideoService videoService, SingerService singerService,
                           UserService userService){
        this.videoService = videoService;
        this.singerService = singerService;
        this.userService = userService;
    }


    @GetMapping("/videolist")
    public String videolist(Model model){
        List<VideoDto> videoDtoList = videoService.getVideoListByIdDesc();
        model.addAttribute("videoList",videoDtoList);
        return "video/list";
    }

    @GetMapping("/videoPlay/{no}")
    public String videoPlay(@PathVariable("no") Long id, Model model,
                            HttpServletRequest req){
        HttpSession session = req.getSession();
        SingerDto singer = (SingerDto)session.getAttribute("singer");
        UserDto user = (UserDto)session.getAttribute("user");
        ArrayList<Long> followingList = new ArrayList();
        ArrayList<Long> likeList = new ArrayList();
        ArrayList<Long> playList = new ArrayList();
        if(singer == null && user != null){
            followingList = userService.getFollowingList(user.getId());
            likeList = userService.getLikeList(user.getId());
            playList = userService.getPlaylist(user.getId());
        }
        else if(user == null && singer != null){
            followingList = singerService.getFollowingList(singer.getId());
            likeList = singerService.getLikeList(singer.getId());
            playList = singerService.getPlaylist(singer.getId());
        }
        VideoDto videoDto = videoService.getVideo(id);
        SingerDto singerDto = singerService.getSingerById(videoDto.getSingerId());
        if(followingList.contains(singerDto.getId())){
            model.addAttribute("follow",1);
        }
        else{
            model.addAttribute("follow",0);
        }

        if(likeList.contains(id)){
            model.addAttribute("like",1);
        }
        else{
            model.addAttribute("like",0);
        }

        if(playList.contains(id)){
            model.addAttribute("play",1);
        }
        else{
            model.addAttribute("play",0);
        }

        videoDto.setViewcount(videoDto.getViewcount()+1);
        model.addAttribute("videoDto",videoDto);
        model.addAttribute("singerDto", singerDto);
        videoService.writeVideo(videoDto);
        return "video/videoPlay";
    }
    @GetMapping("/videoUpload")
    public String upload(){
        return "video/videoUpload";
    }

    @PostMapping("/userAddFollowing")
    @ResponseBody
    public void userAddFollowing(long userId, long singerId){
        userService.addFollowing(userId, singerId);
    }

    @PostMapping("/userRemoveFollowing")
    @ResponseBody
    public void userRemoveFollowing(long userId, long singerId){
        userService.removeFollowing(userId, singerId);
    }

    @PostMapping("/userAddLikeList")
    @ResponseBody
    public void userAddLikeList(long userId, long videoId){
        userService.addLikeList(userId, videoId);
    }

    @PostMapping("/userRemoveLikeList")
    @ResponseBody
    public void userRemoveLikeList(long userId, long videoId){
        userService.removeLikeList(userId, videoId);
    }

    @PostMapping("/userAddPlaylist")
    @ResponseBody
    public void userAddPlaylist(long userId, long videoId){
        userService.addPlaylist(userId, videoId);
    }

    @PostMapping("/userRemovePlaylist")
    @ResponseBody
    public void userRemovePlaylist(long userId, long videoId){
        userService.removePlaylist(userId, videoId);
    }

    @PostMapping("/singerAddFollowing")
    @ResponseBody
    public void singerAddFollowing(long userId, long singerId){
        singerService.addFollowing(userId, singerId);
    }

    @PostMapping("/singerRemoveFollowing")
    @ResponseBody
    public void singerRemoveFollowing(long userId, long singerId){
        singerService.removeFollowing(userId, singerId);
    }

    @PostMapping("/singerAddLikeList")
    @ResponseBody
    public void singerAddLikeList(long userId, long videoId){
        singerService.addLikeList(userId, videoId);
    }

    @PostMapping("/singerRemoveLikeList")
    @ResponseBody
    public void singerRemoveLikeList(long userId, long videoId){
        singerService.removeLikeList(userId, videoId);
    }

    @PostMapping("/singerAddPlaylist")
    @ResponseBody
    public void singerAddPlaylist(long userId, long videoId){
        singerService.addPlaylist(userId, videoId);
    }

    @PostMapping("/singerRemovePlaylist")
    @ResponseBody
    public void singerRemovePlaylist(long userId, long videoId){
        singerService.removePlaylist(userId, videoId);
    }

    @GetMapping("/removeLikeList")
    public String removeListList(Long userId, Long videoId, Long singerId, HttpServletRequest req){
        HttpSession session = req.getSession();
        if(session.getAttribute("singer") == null){
           userService.removeLikeList(userId,videoId);
        }
        else{
            singerService.removeLikeList(singerId,videoId);
        }
        return "redirect:/like";
    }
    @GetMapping("/removePlaylist")
    public String removePlayist(Long userId, Long videoId, Long singerId, HttpServletRequest req){
        HttpSession session = req.getSession();
        if(session.getAttribute("singer") == null){
            userService.removePlaylist(userId,videoId);
        }
        else{
            singerService.removePlaylist(singerId,videoId);
        }
        return "redirect:/playList";
    }
    @PostMapping("/videoUploadFile")
    public String upload(@RequestParam("title") String title, @RequestParam("content") String content,
                         @RequestParam("genre1") String genre1, @RequestParam("genre2") String genre2,
                         @RequestParam("video_upload") MultipartFile videoFile,
                         @RequestParam("singerId") long singerId,
                         @RequestParam("thumbnail_upload") MultipartFile thumbnailFile){
        VideoDto videoDto = videoService.uploadVideo(title,content,genre1,genre2,videoFile,thumbnailFile,singerId);

        videoService.writeVideo(videoDto);
        return "redirect:/main";
    }


}
