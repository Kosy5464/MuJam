package com.sample.video.service;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.Video;
import com.sample.video.domain.repository.SingerRepository;
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

    public SingerService(SingerRepository singerRepository){
        this.singerRepository = singerRepository;
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
        if(imageCheck == 1) {
            profileName = "default.jpg";
            uploadProfileName = "default.jpg";
        }
        else{
            profileName = singerProfileFile.getOriginalFilename();
            System.out.println(profileName);
            String profileExtension = profileName.split("[.]")[1];
            uploadProfileName = profileName.split("[.]")[0]+"_uploadProfileImage"+Long.toString(index)+"."+profileExtension;
            try{
                //C:/Users/chlee/MuJam/build/resources/main/static/upload/profileImage 경로로 profileImage폴더 만들어야함
                //본인 profileImage 경로로 바꾸기
                singerProfileFile.transferTo(new File("C:/Users/chlee/MuJam/build/resources/main/static/upload/profileImage/"+uploadProfileName));
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
                .name(singer.getName())
                .singerName(singer.getSingerName())
                .description(singer.getDescription())
                .emailAddress(singer.getEmailAddress())
                .following(singer.getFollowing())
                .genre(singer.getGenre())
                .concept(singer.getConcept())
                .homeAddress(singer.getHomeAddress())
                .id(singer.getId())
                .instagramAccount(singer.getInstagramAccount())
                .likeVideoList(singer.getLikeVideoList())
                .password(singer.getPassword())
                .phoneNumber(singer.getPhoneNumber())
                .playlist(singer.getPlaylist())
                .profileImageName(singer.getProfileImageName())
                .profileImageStoredLocation(singer.getProfileImageStoredLocation())
                .youtubeChannel(singer.getYoutubeChannel())
                .build();
        return singerDto;
    }
}
