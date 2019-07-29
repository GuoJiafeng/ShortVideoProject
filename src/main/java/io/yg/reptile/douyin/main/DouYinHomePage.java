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
        //获取主页 SET NAMES utf8mb4
        String url = urltext;
        Connection connection = Jsoup.connect(url);


        String herder = "Host: aweme-eagle-hl.snssdk.com\n" +
                "Connection: keep-alive\n" +
                "Cookie: install_id=80752569783; ttreq=1$1b76a6804c132985a4865de6f133815305600275; odin_tt=3d8611d091f47177327b4da5306dd88077de12a2eda0859fa1b3a42ab60d959be2a003cb8687606aca7e641e998c8015; qh[360]=1\n" +
                "Accept-Encoding: gzip\n" +
                "X-SS-REQ-TICKET: 1564410566980\n" +
                "sdk-version: 1\n" +
                "User-Agent: com.ss.android.ugc.aweme/730 (Linux; U; Android 5.1.1; zh_CN; OPPO R11; Build/NMF26X; Cronet/58.0.2991.0)\n" +
                "X-Gorgon: 03000000400153c981a6b68de0c1af9eeb90f701e76ff17dba70\n" +
                "X-Khronos: 1564410567";


        for (String s : herder.split("\n")) {

            String[] value = s.split(":");
            connection.header(value[0], value[1]);


        }


        Connection.Response response = connection.ignoreContentType(true).method(Connection.Method.GET).execute();
        Document document = response.parse();
        System.out.println(document.body().html());

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
