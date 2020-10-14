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

    public User toEntity() {
        User build = User.builder()
                .emailAddress(emailAddress)
                .homeAddress(homeAddress)
                .id(id)
                .userId(userId)
                .name(name)
                .password(password)
                .phoneNumber(phoneNumber)
                .nickname(nickname)
                .build();
        return build;
    }
}
