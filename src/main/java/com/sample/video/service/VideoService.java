package com.sample.video.service;

import com.sample.video.domain.entity.Video;
import com.sample.video.domain.repository.VideoRepository;
import com.sample.video.dto.VideoDto;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class VideoService {

    private VideoRepository videoRepository;

    public VideoService(VideoRepository videoRepository){
        this.videoRepository = videoRepository;
    }

    @Transactional
    public void writeVideo(VideoDto videoDto){
        videoRepository.save(videoDto.toEntity());
    }

    @Transactional
    public VideoDto getVideo(Long id){
        Optional<Video> videoWrapper = videoRepository.findById(id);
        Video video = videoWrapper.get();

        VideoDto videoDto = VideoDto.builder()
                .id(video.getId())
                .title(video.getTitle())
                .content(video.getContent())
                .createdAt(video.getCreatedAt())
                .singerId(video.getSingerId())
                .storedLocation(video.getStoredLocation())
                .build();

        return videoDto;
    }
    @Transactional
    public List<VideoDto> getVideoList(){
        List<Video> videos = videoRepository.findAllByOrderByIdDesc();
        List<VideoDto> videoDtoList = new ArrayList<>();

        for(Video video : videos){
            VideoDto videoDto = VideoDto.builder()
                    .id(video.getId())
                    .title(video.getTitle())
                    .content(video.getContent())
                    .createdAt(video.getCreatedAt())
                    .singerId(video.getSingerId())
                    .storedLocation(video.getStoredLocation())
                    .build();

            videoDtoList.add(videoDto);
        }

        return videoDtoList;
    }

}
