package com.sample.video.service;

import com.sample.video.domain.entity.Reply;
import com.sample.video.domain.entity.User;
import com.sample.video.domain.repository.UserRepository;
import com.sample.video.dto.ReplyDto;
import com.sample.video.dto.UserDto;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class UserService {

    private UserRepository userRepository;
    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    @Transactional
    public void writeUser(UserDto user){
        userRepository.save(user.toEntity());
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
                .playlist(user.getPlaylist())
                .build();
        return userDto;
    }
}
