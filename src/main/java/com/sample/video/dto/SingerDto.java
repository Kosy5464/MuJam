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
    private String name;
    private String singerName;
    private String emailAddress;
    private String phoneNumber;
    private String homeAddress;
    private String singerId;
    private String genre;
    private String concept;
    private String profileImageName;
    private String profileImageStoredLocation;
    private String description;
    private String following;
    private String playlist;
    private LocalDateTime createdAt;
    private String instagramAccount;
    private String youtubeChannel;
    private String likeVideoList;

    public Singer toEntity(){
        Singer build = Singer.builder()
                .description(description)
                .singerName(singerName)
                .emailAddress(emailAddress)
                .following(following)
                .genre(genre)
                .concept(concept)
                .name(name)
                .homeAddress(homeAddress)
                .id(id)
                .instagramAccount(instagramAccount)
                .likeVideoList(likeVideoList)
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
