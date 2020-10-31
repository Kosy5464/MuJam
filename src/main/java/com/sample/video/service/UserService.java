package com.sample.video.service;

import com.sample.video.domain.entity.User;
import com.sample.video.domain.repository.UserRepository;
import com.sample.video.dto.UserDto;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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
                    .build();
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
                    .build();
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
                    .build();
            return userDto;
        }catch(NoSuchElementException e) {
            return null;
        }
    }
}
