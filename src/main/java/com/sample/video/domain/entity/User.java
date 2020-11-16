package com.sample.video.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class User extends TimeEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String userId;

    private String password;

    private String emailAddress;

    private String homeAddress;

    private String phoneNumber;

    private String name;

    private String nickname;

    private String following;

    private String playlist;

    private String likeVideoList;

    private String profileImageName;

    private String profileImageStoredLocation;
}
