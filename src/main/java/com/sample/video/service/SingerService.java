package com.sample.video.service;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.repository.SingerRepository;
import com.sample.video.dto.SingerDto;
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
            SingerDto singerDto = SingerDto.builder()
                    .singerId(singer.getSingerId())
                    .singerName(singer.getSingerName())
                    .description(singer.getDescription())
                    .emailAddress(singer.getEmailAddress())
                    .followers(singer.getFollowers())
                    .genre1(singer.getGenre1())
                    .genre2(singer.getGenre2())
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
            singerDtos.add(singerDto);
        }
        return singerDtos;
    }
    @Transactional
    public void writeSinger(SingerDto singerDto, MultipartFile singerProfileFile){
        String profileName = singerProfileFile.getOriginalFilename();
        System.out.println(profileName);
        String profileExtension = profileName.split("[.]")[1];
        long index = 1;
        if(!getSingerListByIdDesc().isEmpty()) {
            index = getSingerListByIdDesc().get(0).getId() + 1;
        }
        System.out.println(index);
        String uploadProfileName = profileName.split("[.]")[0]+"_uploadProfileImage"+Long.toString(index)+"."+profileExtension;
        try{
            //본인 profile 경로로 바꾸기
            singerProfileFile.transferTo(new File("C:/Users/chlee/MuJam/build/resources/main/static/upload/profileImage/"+uploadProfileName));

        } catch(IllegalStateException | IOException e){
            e.printStackTrace();
        }
        singerDto.setProfileImageName(profileName);
        singerDto.setProfileImageStoredLocation("upload/profileImage/"+uploadProfileName);
        singerRepository.save(singerDto.toEntity());
    }

    @Transactional
    public SingerDto getSingerBySingerId(String singerId){
        Optional<Singer> singerWrapper = singerRepository.findBySingerId(singerId);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = SingerDto.builder()
                    .singerId(singer.getSingerId())
                    .singerName(singer.getSingerName())
                    .description(singer.getDescription())
                    .emailAddress(singer.getEmailAddress())
                    .followers(singer.getFollowers())
                    .genre1(singer.getGenre1())
                    .genre2(singer.getGenre2())
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
        }catch(NoSuchElementException e){
            return null;
        }
    }

    @Transactional
    public SingerDto getSingerById(long id){
        Optional<Singer> singerWrapper = singerRepository.findById(id);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = SingerDto.builder()
                    .singerId(singer.getSingerId())
                    .singerName(singer.getSingerName())
                    .description(singer.getDescription())
                    .emailAddress(singer.getEmailAddress())
                    .followers(singer.getFollowers())
                    .genre1(singer.getGenre1())
                    .genre2(singer.getGenre2())
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
        }catch(NoSuchElementException e){
            return null;
        }
    }
    @Transactional
    public SingerDto getSingerBySingerName(String singerName){
        Optional<Singer> singerWrapper = singerRepository.findBySingerName(singerName);
        try{
            Singer singer = singerWrapper.get();
            SingerDto singerDto = SingerDto.builder()
                    .singerId(singer.getSingerId())
                    .singerName(singer.getSingerName())
                    .description(singer.getDescription())
                    .emailAddress(singer.getEmailAddress())
                    .followers(singer.getFollowers())
                    .genre1(singer.getGenre1())
                    .genre2(singer.getGenre2())
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
        }catch(NoSuchElementException e){
            return null;
        }
    }
}
