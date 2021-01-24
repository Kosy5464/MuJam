package com.sample.video.service;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.Video;
import com.sample.video.domain.repository.SingerRepository;
import com.sample.video.domain.repository.VideoRepository;
import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.dto.VideoDto;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class SingerService {
    SingerRepository singerRepository;
    private VideoRepository videoRepository;

    public SingerService(SingerRepository singerRepository,VideoRepository videoRepository){
        this.singerRepository = singerRepository;
        this.videoRepository = videoRepository;
    }

    @Transactional
    public VideoDto getVideo(Long id){
        Optional<Video> videoWrapper = videoRepository.findById(id);
        Video video = videoWrapper.get();

        VideoDto videoDto = makeVideoDto(video);

        return videoDto;
    }
    @Transactional
    public void writeVideo(VideoDto videoDto){
        videoRepository.save(videoDto.toEntity());
    }


    @Transactional
    public List<SingerDto> getSingerListByIdDesc(){
        List<Singer> singers = singerRepository.findAllByOrderByIdDesc();
        List<SingerDto> singerDtos = new ArrayList();
        for(Singer singer : singers){
            SingerDto singerDto = makeSingerDto(singer);
            singerDtos.add(singerDto);
        }
        return singerDtos;
    }
    @Transactional
    public void writeSinger(SingerDto singerDto){
        singerRepository.save(singerDto.toEntity());
    }
    @Transactional
    public void createSinger(SingerDto singerDto, MultipartFile singerProfileFile, int imageCheck){
        long index = 1;
        String profileName = "";
        String uploadProfileName = "";
        if(!getSingerListByIdDesc().isEmpty()) {
            index = getSingerListByIdDesc().get(0).getId() + 1;
        }
        if(singerProfileFile.getOriginalFilename().length() == 0) {
            profileName = "default.jpg";
            uploadProfileName = "default.jpg";
        }
        else{
            profileName = singerProfileFile.getOriginalFilename();
            String profileExtension = profileName.split("[.]")[1];
            uploadProfileName = profileName.split("[.]")[0]+"_uploadProfileImage"+Long.toString(index)+"."+profileExtension;
            try{
                //C:/Users/chlee/MuJam/build/resources/main/static/upload/profileImage 경로로 profileImage폴더 만들어야함
                //본인 profileImage 경로로 바꾸기
                singerProfileFile.transferTo(new File("//Users/chlee140/workspace/study/practice/MuJam/build/resources/main/static/upload/profileImage/"+uploadProfileName));
            } catch(IllegalStateException | IOException e){
                e.printStackTrace();
            }
        }
        singerDto.setProfileImageName(profileName);
        singerDto.setProfileImageStoredLocation("upload/profileImage/"+uploadProfileName);
        singerRepository.save(singerDto.toEntity());
    }
    @Transactional
    public List<SingerDto> getSingerResultList(String searchTarget){
        List<Singer> singers = singerRepository.findBySingerNameContaining(searchTarget);
        List<SingerDto> singerResultList = new ArrayList();

        for(Singer singer : singers){
            SingerDto singerDto = makeSingerDto(singer);
            singerResultList.add(singerDto);
        }

        return singerResultList;
    }

    @Transactional
    public SingerDto getSingerBySingerId(String singerId){
        Optional<Singer> singerWrapper = singerRepository.findBySingerId(singerId);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = makeSingerDto(singer);
            return singerDto;
        }catch(NoSuchElementException e){
            return null;
        }
    }

    @Transactional
    public SingerDto getSingerById(long id){
        Optional<Singer> singerWrapper = singerRepository.findById(id);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = makeSingerDto(singer);
            return singerDto;
        }catch(NoSuchElementException e){
            return null;
        }
    }
    @Transactional
    public SingerDto getSingerBySingerName(String singerName){
        Optional<Singer> singerWrapper = singerRepository.findBySingerName(singerName);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = makeSingerDto(singer);
            return singerDto;
        }catch(NoSuchElementException e){
            return null;
        }
    }
    @Transactional
    public ArrayList<Long> getFollowingList(Long id){
        SingerDto singer = getSingerById(id);
        String following = singer.getFollowing();
        ArrayList<Long> followingList = new ArrayList();
        if(following != null && !following.equals("")){
            String[] strArr = following.split(",");
            for(String str : strArr){
                followingList.add(Long.parseLong(str));
            }
        }
        return followingList;
    }

    @Transactional
    public ArrayList<Long> getLikeList(Long id) {
        SingerDto singer = getSingerById(id);
        String like = singer.getLikeVideoList();
        ArrayList<Long> likeList = new ArrayList();
        if (like != null && !like.equals("")) {
            String[] strArr = like.split(",");
            for (String str : strArr) {
                likeList.add(Long.parseLong(str));
            }
        }
        return likeList;
    }
    @Transactional
    public ArrayList<Long> getPlaylist(Long id){
        SingerDto singer = getSingerById(id);
        String play = singer.getPlaylist();
        ArrayList<Long> playList = new ArrayList();
        if(play != null && !play.equals("")){
            String[] strArr = play.split(",");
            for(String str : strArr){
                playList.add(Long.parseLong(str));
            }
        }
        return playList;
    }
    @Transactional
    public ArrayList<Long> getlikeReplyList(Long id){
        SingerDto singer = getSingerById(id);
        String likeReply = singer.getFollowing();
        ArrayList<Long> likeReplyList = new ArrayList();
        if(likeReply != null && !likeReply.equals("")){
            String[] strArr = likeReply.split(",");
            for(String str : strArr){
                likeReplyList.add(Long.parseLong(str));
            }
        }
        return likeReplyList;
    }

    @Transactional
    public void addFollowing(Long userId, Long singerId){
        SingerDto singer = getSingerById(userId);
        String followList = singer.getFollowing();
        if(followList == null){
            followList = "";
        }
        followList = followList + singerId + ",";
        singer.setFollowing(followList);
        writeSinger(singer);
    }
    @Transactional
    public void removeFollowing(Long userId, Long singerId){
        SingerDto singer = getSingerById(userId);
        ArrayList<Long> followArrayList = getFollowingList(userId);
        for(int i = 0 ; i < followArrayList.size(); i++){
            if(followArrayList.get(i) == singerId){
                followArrayList.remove(i);
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("");
        for(long n : followArrayList){
            sb.append(n+",");
        }
        singer.setFollowing(sb.toString());
        writeSinger(singer);
    }
    @Transactional
    public void addLikeList(Long singerId, Long videoId){
        VideoDto videoDto = getVideo(videoId);
        videoDto.setLike_count(videoDto.getLike_count() +1);
        writeVideo(videoDto);
        SingerDto singer = getSingerById(singerId);
        String likeList = singer.getLikeVideoList();
        if(likeList == null){
            likeList = "";
        }
        likeList = likeList + videoId + ",";
        singer.setLikeVideoList(likeList);
        writeSinger(singer);
    }
    @Transactional
    public void removeLikeList(Long singerId, Long videoId){
        VideoDto videoDto = getVideo(videoId);
        videoDto.setLike_count(videoDto.getLike_count() -1);
        writeVideo(videoDto);
        SingerDto singer = getSingerById(singerId);
        ArrayList<Long> likeArrayList = getLikeList(singerId);
        for(int i = 0 ; i < likeArrayList.size(); i++){
            if(likeArrayList.get(i) == videoId){
                likeArrayList.remove(i);
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("");
        for(long n : likeArrayList){
            sb.append(n+",");
        }
        singer.setLikeVideoList(sb.toString());
        writeSinger(singer);
    }
    @Transactional
    public void addPlaylist(Long singerId, Long videoId){
        SingerDto singer = getSingerById(singerId);
        String playList = singer.getPlaylist();
        if(playList == null){
            playList = "";
        }
        playList = playList + videoId + ",";
        singer.setPlaylist(playList);
        writeSinger(singer);
    }
    @Transactional
    public void removePlaylist(Long singerId, Long videoId){
        SingerDto singer = getSingerById(singerId);
        ArrayList<Long> playArrayList = getPlaylist(singerId);
        for(int i = 0 ; i < playArrayList.size(); i++){
            if(playArrayList.get(i) == videoId){
                playArrayList.remove(i);
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("");
        for(long n : playArrayList){
            sb.append(n+",");
        }
        singer.setPlaylist(sb.toString());
        writeSinger(singer);
    }

    public SingerDto makeSingerDto(Singer singer){
        SingerDto singerDto = SingerDto.builder()
                .singerId(singer.getSingerId())
                .singerName(singer.getSingerName())
                .description(singer.getDescription())
                .emailAddress(singer.getEmailAddress())
                .following(singer.getFollowing())
                .genre1(singer.getGenre1())
                .genre2(singer.getGenre2())
                .homeAddress(singer.getHomeAddress())
                .id(singer.getId())
                .instagramAccount(singer.getInstagramAccount())
                .likeVideoList(singer.getLikeVideoList())
                .likeReplyList(singer.getLikeReplyList())
                .password(singer.getPassword())
                .phoneNumber(singer.getPhoneNumber())
                .playlist(singer.getPlaylist())
                .profileImageName(singer.getProfileImageName())
                .profileImageStoredLocation(singer.getProfileImageStoredLocation())
                .youtubeChannel(singer.getYoutubeChannel())
                .build();
        return singerDto;

    }
    public VideoDto makeVideoDto(Video video){
        VideoDto videoDto = VideoDto.builder()
                .id(video.getId())
                .title(video.getTitle())
                .content(video.getContent())
                .createdAt(video.getCreatedAt())
                .singerId(video.getSingerId())
                .storedLocation(video.getStoredLocation())
                .genre1(video.getGenre1())
                .genre2(video.getGenre2())
                .thumbnailStoredLocation(video.getThumbnailStoredLocation())
                .videoFileName(video.getVideoFileName())
                .thumbnailFileName(video.getThumbnailFileName())
                .viewcount(video.getViewcount())
                .like_count(video.getLike_count())
                .build();

        return videoDto;
    }
}
