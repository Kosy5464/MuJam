package com.sample.video.domain.entity;

import lombok.*;
import org.apache.tomcat.jni.Local;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Reply extends TimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long replyId;

    private long userId;

    private long singerId;

    private long videoId;

    private long likeCount;

    private String comment;

    private long classNo;

    private long groupId;

    @LastModifiedDate
    private LocalDateTime updatedAt;

    private LocalDateTime deletedAt;

//    @ManyToOne
//    @JoinColumn(name = "user_id")
//    private User user;

//    @ManyToOne
//    private Singer singer;


//    @ManyToOne
//    private Video video;

}
