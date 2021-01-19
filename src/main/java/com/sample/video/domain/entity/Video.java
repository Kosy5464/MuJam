package com.sample.video.domain.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Time;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class Video extends TimeEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String content;

    private Long singerId;

    private String storedLocation;

    private String genre1;

    private String genre2;

    private String thumbnailStoredLocation;

    private String videoFileName;

    private String thumbnailFileName;

    private Long viewcount;

    private Long like_count;
}
