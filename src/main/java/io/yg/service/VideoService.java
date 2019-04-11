package io.yg.service;

import com.github.pagehelper.PageInfo;
import io.yg.entity.VideoContent;

import java.util.List;
import java.util.Map;

public interface VideoService {



    void addVideo(String url,String cookie);
    Map showAllByPage(int page, int size);




}
