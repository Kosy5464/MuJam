package com.sample.video.service;

import com.sample.video.domain.entity.User;
import com.sample.video.domain.repository.UserRepository;
import com.sample.video.dto.UserDto;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class UserService {

    private UserRepository userRepository;
    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    /*
    @Transactional
    public UserDto getUser(String userId){
        Optional<User> userWrapper = userRepository.findByUserId(userId);
    }
    */
}
