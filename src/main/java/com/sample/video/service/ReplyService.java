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
    public List<ReplyDto> getReplyByVideoId(Long videoId){
        List<Reply> replyWrapper = replyRepository.findAllByVideoId(videoId);
        List<ReplyDto> replyDtos = new ArrayList();
        try {
            for(Reply reply : replyWrapper ){
                ReplyDto replyDto = makeReplyDto(reply);
                replyDtos.add(replyDto);
            }
            return replyDtos;
        }catch(NoSuchElementException e) {
            return null;
        }
    }

    @Transactional
    public ReplyDto uploadReply(String comments){
        ReplyDto replyDto = new ReplyDto();
        replyDto.setComment(comments);

        return replyDto;
    }
    public ReplyDto makeReplyDto(Reply reply){
        ReplyDto replyDto = ReplyDto.builder()
                .singerId(reply.getSingerId())
                .userId(reply.getUserId())
                .groupId(reply.getGroupId())
                .replyId(reply.getReplyId())
                .likeCount(reply.getLikeCount())
                .deletedAt(reply.getDeletedAt())
                .updatedAt(reply.getUpdatedAt())
                .createdAt(reply.getUpdatedAt())
                .classNo(reply.getClassNo())
                .comment(reply.getComment())
                .videoId(reply.getVideoId())
                .build();
        return replyDto;
    }

}
