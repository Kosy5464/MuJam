package com.sample.video.domain.repository;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    public List<User> findAllByOrderByIdDesc();
    public Optional<User> findByUserId(String userId);
    public Optional<User> findByNickname(String nickname);
    public List<User> findAllByOrderByIdAsc();
}
//test3