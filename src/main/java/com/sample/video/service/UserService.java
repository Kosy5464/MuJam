package com.sample.video.service;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.User;
import com.sample.video.domain.entity.Video;
import com.sample.video.domain.repository.UserRepository;
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
public class UserService {

    private UserRepository userRepository;
    private VideoRepository videoRepository;

    public UserService(UserRepository userRepository, VideoRepository videoRepository){
        this.userRepository = userRepository;
        this.videoRepository = videoRepository;
    }


    @Transactional
    public void writeUser(UserDto user){
        userRepository.save(user.toEntity());
    }

    @Transactional
    public void writeVideo(VideoDto videoDto){
        videoRepository.save(videoDto.toEntity());
    }

    @Transactional
    public VideoDto getVideo(Long id){
        Optional<Video> videoWrapper = videoRepository.findById(id);
        Video video = videoWrapper.get();

        VideoDto videoDto = makeVideoDto(video);

        return videoDto;
    }
    @Transactional
    public List<UserDto> getUserListByIdDesc(){
        List<User> users = userRepository.findAllByOrderByIdDesc();
        List<UserDto> userDtos = new ArrayList();
        for(User user : users){
            UserDto userDto = makeUserDto(user);
            userDtos.add(userDto);
        }
        return userDtos;
    }
    @Transactional
    public void createUser(UserDto userDto, MultipartFile userProfileFile, int imageCheck){
        long index = 1;
        String profileName = "";
        String uploadProfileName = "";
        if(!getUserListByIdDesc().isEmpty()) {
            index = getUserListByIdDesc().get(0).getId() + 1;
        }
        if(imageCheck == 1) {
            profileName = "default.jpg";
            uploadProfileName = "default.jpg";
        }
        else{
            profileName = userProfileFile.getOriginalFilename();
            String profileExtension = profileName.split("[.]")[1];
            uploadProfileName = profileName.split("[.]")[0]+"_uploadProfileImageU"+Long.toString(index)+"."+profileExtension;
            try{
                //C:/Users/chlee/MuJam/build/resources/main/static/upload/profileImage 경로로 profileImage폴더 만들어야함
                //본인 profileImage 경로로 바꾸기C:/Users/chlee/MuJam/build/resources/main/static/upload/
                userProfileFile.transferTo(new File("C:/Users/kijk6/IdeaProjects/MuJam/build/resources/main/static/upload/profileImage/"+uploadProfileName));
            } catch(IllegalStateException | IOException e){
                e.printStackTrace();
            }
        }
        userDto.setProfileImageName(profileName);
        userDto.setProfileImageStoredLocation("upload/profileImage/"+uploadProfileName);
        userRepository.save(userDto.toEntity());
    }

    @Transactional
    public UserDto getUserByUserId(String userId){
        Optional<User> userWrapper = userRepository.findByUserId(userId);
        try {
            User user = userWrapper.get();
            UserDto userDto = makeUserDto(user);
            return userDto;
        }catch(NoSuchElementException e) {
            return null;
        }
    }

    @Transactional
    public UserDto getUserById(Long id){
        Optional<User> userWrapper = userRepository.findById(id);
        try {
            User user = userWrapper.get();
            UserDto userDto = makeUserDto(user);
            return userDto;
        }catch(NoSuchElementException e) {
            return null;
        }
    }


    @Transactional
    public UserDto getUserByNickname(String nickname){
        Optional<User> userWrapper = userRepository.findByNickname(nickname);
        try {
            User user = userWrapper.get();
            UserDto userDto = makeUserDto(user);
            return userDto;
        }catch(NoSuchElementException e) {
            return null;
        }
    }

    @Transactional
    public List<UserDto> findAllUser(){
        List<User> userWrapper = userRepository.findAllByOrderByIdAsc();
        List<UserDto> userDtos = new ArrayList();
        try {
            for(User user : userWrapper ){
                UserDto userDto = makeUserDto(user);
                userDtos.add(userDto);
            }
            return userDtos;
        }catch(NoSuchElementException e) {
            return null;
        }
    }

    @Transactional
    public ArrayList<Long> getFollowingList(Long id){
        UserDto user = getUserById(id);
        String following = user.getFollowing();
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
        UserDto user = getUserById(id);
        String like = user.getLikeVideoList();
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
        UserDto user = getUserById(id);
        String play = user.getPlaylist();
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
        UserDto user = getUserById(id);
        String likeReply = user.getLikeReplyList();
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
    public void addLikeReply(Long userId, Long replyId){
        UserDto user = getUserById(userId);
        String replyList = user.getLikeReplyList();
        if(replyList == null){
            replyList = "";
        }
        replyList = replyList + replyId + ",";
        user.setLikeReplyList(replyList);
        writeUser(user);
    }
    @Transactional
    public void removeLikeReply(Long userId, Long replyId){
        UserDto user = getUserById(userId);
        ArrayList<Long> likeReplyArrayList = getlikeReplyList(userId);
        for(int i = 0 ; i < likeReplyArrayList.size(); i++){
            if(likeReplyArrayList.get(i) == replyId){
                likeReplyArrayList.remove(i);
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("");
        for(long n : likeReplyArrayList){
            sb.append(n+",");
        }
        user.setLikeReplyList(sb.toString());
        writeUser(user);
    }
    @Transactional
    public void addFollowing(Long userId, Long singerId){
        UserDto user = getUserById(userId);
        String followList = user.getFollowing();
        if(followList == null){
            followList = "";
        }
        followList = followList + singerId + ",";
        user.setFollowing(followList);
        writeUser(user);
    }
    @Transactional
    public void removeFollowing(Long userId, Long singerId){
        UserDto user = getUserById(userId);
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
        user.setFollowing(sb.toString());
        writeUser(user);
    }
    @Transactional
    public void addLikeList(Long userId, Long videoId){
        VideoDto videoDto = getVideo(videoId);
        videoDto.setLike_count(videoDto.getLike_count()+1);
        writeVideo(videoDto);
        System.out.println("흠!@!@!@!@!@!@!@!@!@!@!");
        UserDto user = getUserById(userId);
        String likeList = user.getLikeVideoList();
        if(likeList == null){
            likeList = "";
        }
        likeList = likeList + videoId + ",";
        user.setLikeVideoList(likeList);
        writeUser(user);
    }
    @Transactional
    public void removeLikeList(Long userId, Long videoId){
        VideoDto videoDto = getVideo(videoId);
        videoDto.setLike_count(videoDto.getLike_count() -1);
        writeVideo(videoDto);
        UserDto user = getUserById(userId);
        ArrayList<Long> likeArrayList = getLikeList(userId);
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
        user.setLikeVideoList(sb.toString());
        writeUser(user);
    }
    @Transactional
    public void addPlaylist(Long userId, Long videoId){
        UserDto user = getUserById(userId);
        String playList = user.getPlaylist();
        if(playList == null){
            playList = "";
        }
        playList = playList + videoId + ",";
        user.setPlaylist(playList);
        writeUser(user);
    }
    @Transactional
    public void removePlaylist(Long userId, Long videoId){
        UserDto user = getUserById(userId);
        ArrayList<Long> playArrayList = getPlaylist(userId);
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
        user.setPlaylist(sb.toString());
        writeUser(user);
    }
    public UserDto makeUserDto(User user){
        UserDto userDto = UserDto.builder()
                .profileImageName(user.getProfileImageName())
                .profileImageStoredLocation(user.getProfileImageStoredLocation())
                .userId(user.getUserId())
                .createdAt(user.getCreatedAt())
                .emailAddress(user.getEmailAddress())
                .homeAddress(user.getHomeAddress())
                .id(user.getId())
                .name(user.getName())
                .password(user.getPassword())
                .phoneNumber(user.getPhoneNumber())
                .nickname(user.getNickname())
                .following(user.getFollowing())
                .likeVideoList(user.getLikeVideoList())
                .likeReplyList(user.getLikeReplyList())
                .playlist(user.getPlaylist())
                .build();
        return userDto;
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
