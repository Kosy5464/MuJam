package com.sample.video.domain.repository;

import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.Video;
import com.sample.video.dto.SingerDto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface SingerRepository extends JpaRepository<Singer, Long> {
    public List<Singer> findAllByOrderByIdDesc();
    public Optional<Singer> findBySingerId(String singerId);
    public Optional<Singer> findBySingerName(String singerName);
    public List<Singer> findBySingerNameContaining(String searchTarget);
}
//test2