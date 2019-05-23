package io.yg.reptile.douyin.main;


import io.yg.entity.VideoContent;
import io.yg.reptile.douyin.entity.Aweme_list;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.UUID;


public class DownFromDetailUrl {

    public static VideoContent start(String urltext, String filenmae, String nickname, Aweme_list aweme_list) throws Exception {
        VideoContent videoContent = new VideoContent();
        try {
            String url = urltext;
            Connection connect = Jsoup.connect(url);
            connect.header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36");
            connect.header("Cookie", "tt_webid=6584217745701176839");
            Connection.Response response = connect.ignoreContentType(true).method(Connection.Method.GET).execute();
            Document document = response.parse();
            String ss[] = document.html().split("playAddr: \"");
            String ss2[] = ss[1].split("\",");
            System.out.println(ss2[0]);
            // 得到url
            // https://aweme.snssdk.com/aweme/v1/playwm/?video_id=380e29ed5af54d22896d933c81980c31&line=0


            /**
             * 下载视频
             */

            //DownloadFromNetWork.downLoadFromUrl(ss2[0],new Date().getTime()+".mp4","E:");
            Connection connection = Jsoup.connect(ss2[0]);
            connection.header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36");
            connection.header("Cookie", "tt_webid=6584217745701176839");
            Connection.Response response1 = connection.ignoreContentType(true).method(Connection.Method.GET).execute();
            URL url2 = response1.url();
            //System.out.println(url2);

            File file = new File("E:\\douyin\\" + nickname);
            if (!file.exists()) {
                file.mkdir();
            }


            File downFile = new File("E:\\douyin\\" + nickname + "\\" + filenmae + new Date().getTime() + ".mp4");
            //FileUtils.copyURLToFile(url2, downFile);


            videoContent.setVcId(UUID.randomUUID().toString());
            videoContent.setVcAuthor(aweme_list.getAuthor().getNickname());
            videoContent.setVcDetail(aweme_list.getDesc().toString());
            videoContent.setVcFrom("douyin");
            videoContent.setVcShareurl(ss2[0]);
            videoContent.setVcCreatetime(new Date());
            videoContent.setReservedField01(aweme_list.getVideo().getCover().getUrl_list().get(0));


            System.out.println(videoContent.toString());
        } catch (IOException e) {
            e.printStackTrace();

        }

        return videoContent;
    }

}
