package com.sample.video.dto;

import com.sample.video.domain.entity.Video;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VideoDto {
    private Long id;
    private String title;
    private String content;
    private Long singerId;
    private String storedLocation;
    private LocalDateTime createdAt;
    private String genre1;
    private String genre2;
    private String thumbnailStoredLocation;
    private String videoFileName;
    private String thumbnailFileName;
    private Long viewcount;
    public Video toEntity(){
        Video build = Video.builder()
                .id(id)
                .title(title)
                .content(content)
                .singerId(singerId)
                .storedLocation(storedLocation)
                .genre1(genre1)
                .genre2(genre2)
                .thumbnailStoredLocation(thumbnailStoredLocation)
                .thumbnailFileName(thumbnailFileName)
                .videoFileName(videoFileName)
                .viewcount(viewcount)
                .build();
        return build;
    }
}
