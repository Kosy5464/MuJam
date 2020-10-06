package com.sample.video.service;

import com.sample.video.domain.entity.Video;
import com.sample.video.domain.repository.VideoRepository;
import com.sample.video.dto.VideoDto;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
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
                .genre1(video.getGenre1())
                .genre2(video.getGenre2())
                .thumbnailStoredLocation(video.getThumbnailStoredLocation())
                .videoFileName(video.getVideoFileName())
                .thumbnailFileName(video.getThumbnailFileName())
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
                    .genre1(video.getGenre1())
                    .genre2(video.getGenre2())
                    .thumbnailStoredLocation(video.getThumbnailStoredLocation())
                    .videoFileName(video.getVideoFileName())
                    .thumbnailFileName(video.getThumbnailFileName())
                    .build();

            videoDtoList.add(videoDto);
        }

        return videoDtoList;
    }

    @Transactional
    public VideoDto uploadVideo(String title, String content, String genre1, String genre2,
                                MultipartFile videoFile, MultipartFile thumbnailFile){
        VideoDto videoDto = new VideoDto();
        String videoName = videoFile.getOriginalFilename();
        String thumbnailName = thumbnailFile.getOriginalFilename();
        System.out.println(videoName);
        System.out.println(thumbnailName);
        String videoExtension = videoName.split("[.]")[1];
        String thumbnailExtension = thumbnailName.split("[.]")[1];
        long index = 1;
        if(!getVideoList().isEmpty()) {
            index = getVideoList().get(0).getId() + 1;
        }
        System.out.println(index);
        String uploadVideoName = Long.toString(index)+"."+videoExtension;
        String uploadThumbnailName = Long.toString(index)+"."+thumbnailExtension;
        try{
            //본인 uploadvideo, thumbnail 경로로 바꾸기
            videoFile.transferTo(new File("C:/Users/kijk6/IdeaProjects/MuJam/build/resources/main/static/upload/video/"+uploadVideoName));
            thumbnailFile.transferTo(new File("C:/Users/kijk6/IdeaProjects/MuJam/build/resources/main/static/upload/thumbnail/"+uploadThumbnailName));
        } catch(IllegalStateException | IOException e){
            e.printStackTrace();
        }
        System.out.println(videoFile.getContentType());
        System.out.println(videoFile.getName());
        System.out.println(videoFile.getOriginalFilename());
        videoDto.setContent(content);
        videoDto.setTitle(title);
        videoDto.setSingerId(1L);
        videoDto.setGenre1(genre1);
        videoDto.setGenre2(genre2);
        videoDto.setStoredLocation("upload/video/"+uploadVideoName);
        videoDto.setThumbnailStoredLocation("upload/thumbnail/"+uploadThumbnailName);
        videoDto.setVideoFileName(videoName);
        videoDto.setThumbnailFileName(thumbnailName);
        return videoDto;
    }
}
