package com.sample.video.dto;

import com.sample.video.domain.entity.Singer;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SingerDto {
    private long id;
    private String password;
    private String singerName;
    private String emailAddress;
    private String phoneNumber;
    private String homeAddress;
    private String singerId;
    private String genre1;
    private String genre2;
    private String profileImageName;
    private String profileImageStoredLocation;
    private String description;
    private String following;
    private String playlist;
    private LocalDateTime createdAt;
    private String instagramAccount;
    private String youtubeChannel;
    private String likeVideoList;
    private String likeReplyList;

    public Singer toEntity(){
        Singer build = Singer.builder()
                .description(description)
                .singerName(singerName)
                .emailAddress(emailAddress)
                .following(following)
                .genre1(genre1)
                .genre2(genre2)
                .homeAddress(homeAddress)
                .id(id)
                .instagramAccount(instagramAccount)
                .likeVideoList(likeVideoList)
                .likeReplyList(likeReplyList)
                .password(password)
                .phoneNumber(phoneNumber)
                .playlist(playlist)
                .profileImageName(profileImageName)
                .profileImageStoredLocation(profileImageStoredLocation)
                .singerId(singerId)
                .youtubeChannel(youtubeChannel)
                .build();

        return build;
    }
}
