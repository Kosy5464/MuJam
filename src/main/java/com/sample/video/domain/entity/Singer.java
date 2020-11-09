package com.sample.video.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Singer extends TimeEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    private String instagramAccount;

    private String youtubeChannel;

    private String likeVideoList;

//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "singer")
//    private List<Reply> replyList;

}
