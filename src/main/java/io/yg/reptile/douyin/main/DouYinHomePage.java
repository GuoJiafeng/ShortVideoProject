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


        String herder = "Host: aweme-eagle.snssdk.com\n" +
                "Connection: keep-alive\n" +
                "Cookie: install_id=69542852213; ttreq=1$3d37ae59e82eafc219e21f2d732576fefa8f0573; qh[360]=1; odin_tt=748299982ce5369e352ece6ca8248fa51aaf7ab176c26c9f813fa69efe733f55d852bba5f11827fe58b8b77858001474fe2d8dfc8a582f7d2da33c6a354273cb; sid_guard=d4c24a210ace32e06afc0b4d10ad5380%7C1555494883%7C5184000%7CSun%2C+16-Jun-2019+09%3A54%3A43+GMT; uid_tt=0f4de7ce16b64c1c955de357a7c5708a; sid_tt=d4c24a210ace32e06afc0b4d10ad5380; sessionid=d4c24a210ace32e06afc0b4d10ad5380\n" +
                "Accept-Encoding: gzip\n" +
                "X-SS-REQ-TICKET: 1555495243971\n" +
                "X-Tt-Token: 00d4c24a210ace32e06afc0b4d10ad538040e264baf4d9306b5b3002453d29459cc02db14ecb84562ae76f31b6d1ee11182c\n" +
                "sdk-version: 1\n" +
                "User-Agent: com.ss.android.ugc.aweme/590 (Linux; U; Android 5.1.1; zh_CN; HUAWEI MLA-AL10; Build/HUAWEIMLA-AL10; Cronet/58.0.2991.0)\n" +
                "X-Gorgon: 0300000044001a32c6c1e8307a269d40c65886c04586e7fa616d\n" +
                "X-Khronos: 1555495244\n" +
                "X-Pods: \n";


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
