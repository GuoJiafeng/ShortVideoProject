package io.yg.reptile.douyin.main;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import io.yg.entity.VideoContent;
import io.yg.reptile.douyin.entity.Aweme_list;
import io.yg.reptile.douyin.entity.HomeRootBean;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;


import java.util.ArrayList;
import java.util.List;

public class DouYinHomePage {


    public static List<VideoContent> run(String urltext) throws Exception {


        List<VideoContent> videoContents = new ArrayList<VideoContent>();
        //获取主页
        String url = urltext;
        Connection connection = Jsoup.connect(url);
        connection.header("User-Agent", "okhttp/3.7.0.6");
        connection.header("Cookie", "odin_tt=a20db8c7667a71003c3d54af6c4e15a09867de9ed59f2b04868bb6d5aa78880ed37ee6fccb9f48e82a720053bbd32de5; uid_tt=1e5c161633ebf6fdf174ea7cbbbefcaf; sid_tt=1601122510414b77ca852ac52672e8e1; sessionid=1601122510414b77ca852ac52672e8e1; sid_guard=1601122510414b77ca852ac52672e8e1%7C1536905520%7C5184000%7CTue%2C+13-Nov-2018+06%3A12%3A00+GMT; install_id=44394266713; ttreq=1$c4c7e6ffaa1cec457260bd2bd53bba90198e688c");
        Connection.Response response = connection.ignoreContentType(true).method(Connection.Method.GET).execute();
        Document document = response.parse();
        //System.out.println(document.body().html());

        HomeRootBean jsonRootBean = JSON.parseObject(document.body().html(), new TypeReference<HomeRootBean>() {
        });

        List<Aweme_list> aweme_lists = jsonRootBean.getAweme_list();
        System.out.println("this request have    " + aweme_lists.size() + "        video~~~,please wait....");




        for (int i = 0; i < aweme_lists.size(); i++) {
            String share_url = aweme_lists.get(i).getShare_url();

            VideoContent videoContent = DownFromDetailUrl.start(share_url, aweme_lists.get(i).getAuthor().getNickname() + "---" + aweme_lists.get(i).getDesc(), aweme_lists.get(i).getAuthor().getNickname(), aweme_lists.get(i));

            videoContents.add(videoContent);

        }
        System.out.println("download complete!");

        return videoContents;


    }

}
