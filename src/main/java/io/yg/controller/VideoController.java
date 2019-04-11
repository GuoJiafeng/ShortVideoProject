package io.yg.controller;


import io.yg.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;


@Controller
@RequestMapping("VideoController")
public class VideoController {

    @Autowired
    private VideoService videoService;


    @RequestMapping("addVideo")
    public @ResponseBody
    String
    addVideo(String url, String cooike) {
        System.out.println(url);
        videoService.addVideo(url, cooike);
        return "success";
    }

    @RequestMapping("showVideo")
    public @ResponseBody
    Map
    showVideo(int page, int size) {
        Map map = videoService.showAllByPage(page, size);
        return map;
    }


}
