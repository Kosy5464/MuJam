package com.sample.video.domain.repository;

import com.sample.video.domain.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    public Optional<User> findByUserId(String userId);
    public Optional<User> findByNickname(String nickname);
    public List<User> findAllByOrderByIdAsc();
    public List<User> findAllByOrderByIdDesc();

}
