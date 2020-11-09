package com.sample.video.dto;

import com.sample.video.domain.entity.Reply;
import com.sample.video.domain.entity.Singer;
import lombok.*;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReplyDto {

    private long replyId;
    private long videoId;
    private long userId;
    private long singerId;
    private String comment;
    private long classNo;
    private long groupId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;

    public Reply toEntity(){
        Reply build = Reply.builder()
                .replyId(replyId)
//                .userId(userId)
               .singerId(singerId)
                .videoId(videoId)
                .comment(comment)
                .classNo(classNo)
                .groupId(groupId)
                .updatedAt(updatedAt)
                .deletedAt(deletedAt)
                .build();

        return build;
    }
}
