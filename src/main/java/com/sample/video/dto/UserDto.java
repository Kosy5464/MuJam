package com.sample.video.dto;

import com.sample.video.domain.entity.User;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto {
    private Long id;
    private String userId;
    private String name;
    private String emailAddress;
    private String homeAddress;
    private String phoneNumber;
    private String password;
    private LocalDateTime createdAt;
    private String nickname;
    private String following;
    private String playlist;
    private String likeVideoList;
    private String likeReplyList;
    private String profileImageName;
    private String profileImageStoredLocation;

    public User toEntity() {
        User build = User.builder()
                .profileImageStoredLocation(profileImageStoredLocation)
                .profileImageName(profileImageName)
                .emailAddress(emailAddress)
                .homeAddress(homeAddress)
                .id(id)
                .userId(userId)
                .name(name)
                .password(password)
                .phoneNumber(phoneNumber)
                .nickname(nickname)
                .following(following)
                .likeVideoList(likeVideoList)
                .likeReplyList(likeReplyList)
                .playlist(playlist)
                .build();
        return build;
    }
}
