package com.sample.video.controller;

import com.mysql.cj.xdevapi.JsonArray;
import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.dto.VideoDto;
import com.sample.video.service.SingerService;
import com.sample.video.service.UserService;
import com.sample.video.service.VideoService;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {
    private VideoService videoService;
    private UserService userService;
    private SingerService singerService;

    public MainController(VideoService videoService, UserService userService, SingerService singerService) {
        this.userService = userService;
        this.videoService = videoService;
        this.singerService = singerService;
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/main")
    public String hello(Model model) {
        List<VideoDto> videoList = videoService.getVideoListByIdDesc();
        List<VideoDto> videoListViewCount = videoService.getVideoListByViewcountDesc();
        List<SingerDto> singerList = new ArrayList();
        List<SingerDto> singerListViewCount = new ArrayList();
        for (VideoDto video : videoList) {
            Long id = video.getSingerId();
            singerList.add(singerService.getSingerById(id));
        }
        for (VideoDto video : videoListViewCount) {
            Long id = video.getSingerId();
            singerListViewCount.add(singerService.getSingerById(id));
        }
        model.addAttribute("singerList", singerList);
        model.addAttribute("singerListViewCount", singerListViewCount);
        model.addAttribute("videoList", videoList);
        model.addAttribute("videoListViewCount", videoListViewCount);
        for (SingerDto singer : singerList) {
            System.out.println(singer);
        }
        System.out.println("-----------");

        for (SingerDto singer : singerListViewCount) {
            System.out.println(singer);
        }

        return "main/main";
    }

    @GetMapping("/new")
    public String NEW(Model model) {
        return "main/NEW";
    }

    @GetMapping("/hot")
    public String HOT(Model model) {
        return "main/HOT";
    }

    @GetMapping("/playList")
    public String playList(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        SingerDto singer = (SingerDto) session.getAttribute("singer");
        UserDto user = (UserDto) session.getAttribute("user");
        ArrayList<VideoDto> playlist = new ArrayList();
        ArrayList<SingerDto> singerList = new ArrayList();
        if (singer != null) {
            ArrayList<Long> idList = singerService.getPlaylist(singer.getId());
            for (Long id : idList) {
                playlist.add(videoService.getVideo(id));
                singerList.add(singerService.getSingerById(videoService.getVideo(id).getSingerId()));
            }
        } else {
            ArrayList<Long> idList = userService.getPlaylist(user.getId());
            for (Long id : idList) {
                playlist.add(videoService.getVideo(id));
                singerList.add(singerService.getSingerById(videoService.getVideo(id).getSingerId()));
            }
        }
        model.addAttribute("playlist", playlist);
        model.addAttribute("singerList", singerList);
        return "main/playList";
    }

    @GetMapping("/like")
    public String like(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        SingerDto singer = (SingerDto) session.getAttribute("singer");
        UserDto user = (UserDto) session.getAttribute("user");
        ArrayList<VideoDto> likeList = new ArrayList();
        ArrayList<SingerDto> singerList = new ArrayList();
        if (singer != null) {
            ArrayList<Long> idList = singerService.getLikeList(singer.getId());
            for (Long id : idList) {
                likeList.add(videoService.getVideo(id));
                singerList.add(singerService.getSingerById(videoService.getVideo(id).getSingerId()));
            }
        } else {
            ArrayList<Long> idList = userService.getLikeList(user.getId());
            for (Long id : idList) {
                likeList.add(videoService.getVideo(id));
                singerList.add(singerService.getSingerById(videoService.getVideo(id).getSingerId()));
            }
        }
        model.addAttribute("likeList", likeList);
        model.addAttribute("singerList", singerList);
        return "main/like";
    }

    @GetMapping("/follow")
    public String follow(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        SingerDto singer = (SingerDto) session.getAttribute("singer");
        UserDto user = (UserDto) session.getAttribute("user");
        if (singer != null) {
            ArrayList<SingerDto> followingList = new ArrayList();
            ArrayList<Long> idList = singerService.getFollowingList(singer.getId());
            for (Long id : idList) {
                followingList.add(singerService.getSingerById(id));
                System.out.println(singerService.getSingerById(id));
            }
            model.addAttribute("followingList", followingList);
        } else {
            ArrayList<SingerDto> followingList = new ArrayList();
            ArrayList<Long> idList = userService.getFollowingList(user.getId());
            for (Long id : idList) {
                followingList.add(singerService.getSingerById(id));
                System.out.println(singerService.getSingerById(id));
            }
            model.addAttribute("followingList", followingList);
        }
        return "main/follow";
    }

    @GetMapping("/musician")
    public String musician(Model model) {
        return "main/musician";
    }

    @GetMapping("/backstage")
    public String backstage(Model model) {
        return "main/backstage";
    }

    @GetMapping("/contact")
    public String contact(Model model) {
        return "main/contact";
    }

    @GetMapping("/gallery")
    public String gallery(Model model) {
        return "main/gallery";
    }

    @GetMapping("/generic")
    public String generic(Model model) {
        return "main/generic";
    }

    @GetMapping("/single")
    public String single(Model model) {
        return "main/single";
    }

    @GetMapping("/searchResult")
    public String searchResult(Model model, String searchTarget) {
        List<SingerDto> singerResultList = singerService.getSingerResultList(searchTarget);
        List<VideoDto> videoResultList = videoService.getVideoResultList(searchTarget);
        List<SingerDto> singerList = new ArrayList();
        for (VideoDto video : videoResultList) {
            singerList.add(singerService.getSingerById(video.getSingerId()));
        }
        model.addAttribute("videoResultList", videoResultList);
        model.addAttribute("singerResultList", singerResultList);
        model.addAttribute("singerList", singerList);
        return "main/searchResult";
    }
    test123
}
