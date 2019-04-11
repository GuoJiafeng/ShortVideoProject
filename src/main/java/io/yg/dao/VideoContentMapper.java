package io.yg.dao;

import io.yg.entity.VideoContent;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoContentMapper {

    int insertBatch(@Param("videoContentList") List<VideoContent> videoContentList);


    List<VideoContent> showAllVideo();



    int deleteByPrimaryKey(String vcId);

    int insert(VideoContent record);

    int insertSelective(VideoContent record);

    VideoContent selectByPrimaryKey(String vcId);

    int updateByPrimaryKeySelective(VideoContent record);

    int updateByPrimaryKey(VideoContent record);


}