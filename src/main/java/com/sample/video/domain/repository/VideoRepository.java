package com.sample.video.domain.repository;

import com.sample.video.domain.entity.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoRepository extends JpaRepository<Video, Long> {
    public List<Video> findAllByOrderByIdDesc();
}
