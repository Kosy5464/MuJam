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

            VideoDto videoDto = makeVideoDto(video);

            return videoDto;
        }
        @Transactional
        public List<VideoDto> getVideoListByIdDesc(){
            List<Video> videos = videoRepository.findAllByOrderByIdDesc();
            List<VideoDto> videoDtoList = new ArrayList<>();

            for(Video video : videos){
                VideoDto videoDto = makeVideoDto(video);

                videoDtoList.add(videoDto);
            }

            return videoDtoList;
        }

        @Transactional
        public List<VideoDto> getVideoListByViewcountDesc(){
            List<Video> videos = videoRepository.findAllByOrderByViewcountDesc();
            List<VideoDto> videoDtoList = new ArrayList<>();

            for(Video video : videos){
                VideoDto videoDto = makeVideoDto(video);

                videoDtoList.add(videoDto);
            }
            return videoDtoList;
        }

        @Transactional
        public VideoDto uploadVideo(String title, String content, String genre1, String genre2,
                                    MultipartFile videoFile, MultipartFile thumbnailFile,long singerId){
            VideoDto videoDto = new VideoDto();
            String videoName = videoFile.getOriginalFilename();
            String thumbnailName = thumbnailFile.getOriginalFilename();
            System.out.println(videoName);
            System.out.println(thumbnailName);
            String videoExtension = videoName.split("[.]")[1];
            String thumbnailExtension = thumbnailName.split("[.]")[1];
            long index = 1;
            if(!getVideoListByIdDesc().isEmpty()) {
                index = getVideoListByIdDesc().get(0).getId() + 1;
            }
            System.out.println(index);
            String uploadVideoName = videoName.split("[.]")[0]+"_uploadVideo"+Long.toString(index)+"."+videoExtension;
            String uploadThumbnailName = thumbnailName.split("[.]")[0]+"_uploadThumbnail"+Long.toString(index)+"."+thumbnailExtension;
            try{
                //본인 uploadvideo, thumbnail 경로로 바꾸기
                videoFile.transferTo(new File("C:/Users/xogh9/Desktop/Mujam/MuJam/build/resources/main/static/upload/video/"+uploadVideoName));
                thumbnailFile.transferTo(new File("C:/Users/xogh9/Desktop/Mujam/MuJam/build/resources/main/static/upload/thumbnail/"+uploadThumbnailName));
            } catch(IllegalStateException | IOException e){
                e.printStackTrace();
            }
            System.out.println(videoFile.getContentType());
            System.out.println(videoFile.getName());
            System.out.println(videoFile.getOriginalFilename());
            videoDto.setContent(content);
            videoDto.setTitle(title);
            videoDto.setSingerId(singerId);
            videoDto.setGenre1(genre1);
            videoDto.setGenre2(genre2);
            videoDto.setStoredLocation("upload/video/"+uploadVideoName);
            videoDto.setThumbnailStoredLocation("upload/thumbnail/"+uploadThumbnailName);
            videoDto.setVideoFileName(videoName);
            videoDto.setThumbnailFileName(thumbnailName);
            videoDto.setViewcount(0l);
            return videoDto;
        }

        public VideoDto makeVideoDto(Video video){
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
                    .viewcount(video.getViewcount())
                    .build();

            return videoDto;
        }
    }
