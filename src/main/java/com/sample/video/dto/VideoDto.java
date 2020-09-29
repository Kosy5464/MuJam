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

    public Video toEntity(){
        Video build = Video.builder()
                .id(id)
                .title(title)
                .content(content)
                .singerId(singerId)
                .storedLocation(storedLocation)
                .build();
        return build;
    }
}
