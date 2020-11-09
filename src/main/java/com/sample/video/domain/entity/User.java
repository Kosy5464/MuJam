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

//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
//    private List<Reply> replyList;

}
