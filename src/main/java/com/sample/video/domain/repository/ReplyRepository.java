package com.sample.video.domain.repository;

import com.sample.video.domain.entity.Reply;
import com.sample.video.domain.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {
    public List<Reply> findAllByVideoId(Long videoId);
}
//test1