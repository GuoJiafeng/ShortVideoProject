package io.yg.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.yg.dao.VideoContentMapper;
import io.yg.entity.VideoContent;
import io.yg.reptile.douyin.main.DouYinHomePage;
import io.yg.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@Transactional
public class VideoServiceImpl implements VideoService {
    @Autowired
    private VideoContentMapper videoContentMapper;


    @Override
    public void addVideo(String url, String cookie) {


        try {
            List<VideoContent> videoContentList = DouYinHomePage.run(url);
            System.out.println(videoContentList.size());

            for (VideoContent videoContent : videoContentList) {

                System.out.println(videoContent);
            }

            videoContentMapper.insertBatch(videoContentList);


        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public Map showAllByPage(int page, int size) {
        PageHelper.startPage(page, size);

        List<VideoContent> videoContents = videoContentMapper.showAllVideo();


        PageInfo pageInfo = new PageInfo(videoContents);

        Map map = new HashMap();
        map.put("list", videoContents);
        map.put("total", pageInfo.getTotal());
        map.put("page", pageInfo.getPageNum());
        map.put("pages", pageInfo.getPages());

        return map;
    }


}
