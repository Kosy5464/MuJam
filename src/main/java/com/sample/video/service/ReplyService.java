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
import jdk.nashorn.internal.objects.annotations.Where;
import org.hibernate.sql.Delete;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
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
    public ReplyDto getReplyByReplyId(Long replyId){
        Optional<Reply> replyWrapper = replyRepository.findByReplyId(replyId);
        try{
            Reply reply = replyWrapper.get();
            ReplyDto replyDto = makeReplyDto(reply);
            return replyDto;
        }catch(NoSuchElementException e){
            return null;
        }
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
    public List<ReplyDto> getReplyByReplyIdAndVideoId(Long replyId, Long videoId){
        List<Reply> replyWrapper = replyRepository.findAllByReplyIdAndVideoId(replyId, videoId);
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

    @Transactional
    public void removeReply(Long replyId, Long videoId ){
        List<ReplyDto> replyArrayList = getReplyByVideoId(videoId);
        List<ReplyDto> replyArrayList2 = getReplyByReplyIdAndVideoId(replyId,videoId);
        System.out.println(replyArrayList2.get(0) + "ㅅㅄㅄㅄㅄㅄㅄㅄㅄㅄㅄㅄㅄㅂㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ");
        for(ReplyDto reply : replyArrayList){
            if(reply.getGroupId() == replyId){
                reply.setDeletedAt(1);
                writeReply(reply);
            }
        }
        replyArrayList2.get(0).setDeletedAt(1);
        writeReply(replyArrayList2.get(0));



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
