package com.sample.video.service;


import com.sample.video.domain.entity.Reply;
import com.sample.video.domain.entity.Singer;
import com.sample.video.domain.entity.User;
import com.sample.video.domain.repository.ReplyRepository;
import com.sample.video.domain.repository.SingerRepository;
import com.sample.video.domain.repository.UserRepository;
import com.sample.video.dto.ReplyDto;
import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.dto.VideoDto;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class ReplyService {

    private ReplyRepository replyRepository;
    public ReplyService(ReplyRepository replyRepository){
        this.replyRepository = replyRepository;
    }

    @Transactional
    public void writeReply(ReplyDto reply){
        replyRepository.save(reply.toEntity());
    }

    @Transactional
    public ReplyDto getReplyByVideoId(Long videoId){
        Optional<Reply> replyWrapper = replyRepository.findByVideoId(videoId);
        try {
            Reply reply = replyWrapper.get();
            ReplyDto replyDto = ReplyDto.builder()
                    .replyId(reply.getReplyId())
               .videoId(reply.getVideoId())
//                    .userId(reply.getUserId())
                    .singerId(reply.getSingerId())
                    .comment(reply.getComment())
                    .classNo(reply.getClassNo())
                    .groupId(reply.getGroupId())
                    .createdAt(reply.getCreatedAt())
                    .updatedAt(reply.getUpdatedAt())
                    .deletedAt(reply.getDeletedAt())
                    .build();
            return replyDto;
        }catch(NoSuchElementException e) {
            return null;
        }
    }

    @Transactional
    public ReplyDto uploadReply(String comments){
        ReplyDto replyDto = new ReplyDto();
        replyDto.setComment(comments);
//      replyDto.setVideoId();
        return replyDto;
    }


}
