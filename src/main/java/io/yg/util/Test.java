package io.yg.util;


import io.yg.entity.VideoContent;
import io.yg.reptile.douyin.main.DouYinHomePage;

import java.io.IOException;
import java.io.InputStream;

import java.util.List;
import java.util.Random;


public class Test {
    public static void main(String[] args) throws IOException, InterruptedException {

       /* String string1 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";

        String str2 = string1.replaceAll("/", "");

        String[] str = string1.split("[\\s]+(?=[^\\)]*(\\(|$))");
        for (String s : str) {
            System.out.println(s);
        }
        */

        Process process = null;

        process = Runtime.getRuntime().exec("ls");


        InputStream inputStream = process.getInputStream();


        byte[] bytes = new byte[1024];

        int index = 0;

        String returnValue = "";

        while ((index = inputStream.read(bytes)) != -1) {

            returnValue += new String(bytes, 0, index, "UTF-8");

        }


        System.out.println(returnValue);


    }

    public void test01() {

        int a = (int) (Math.random() * 10);

        System.out.println(a);


        Random random = new Random();
        System.out.println(random.nextInt(9) + 1);


    }


    public static void test02() throws IOException, InterruptedException {


        Process process = null;

        process = Runtime.getRuntime().exec("ls");


        InputStream inputStream = process.getInputStream();


        byte[] bytes = new byte[1024];

        int index = 0;

        String returnValue = "";

        while ((index = inputStream.read(bytes)) != -1) {

            returnValue += new String(bytes, 0, index, "UTF-8");

        }


        System.out.println(returnValue);


    }



    @org.junit.Test
    public void test03() throws Exception {



        List<VideoContent> contentList = DouYinHomePage.run("https://aweme-eagle.snssdk.com/aweme/v1/feed/?type=0&max_cursor=0&min_cursor=0&count=6&volume=0.13333333333333333&pull_type=1&need_relieve_aweme=0&filter_warn=0&req_from&is_cold_start=0&longitude=0&latitude=0&address_book_access=2&gps_access=2&ts=1555485042&js_sdk_version=1.13.10&app_type=normal&manifest_version_code=580&_rticket=1555485045876&ac=wifi&device_id=61686188148&iid=68812614030&mcc_mnc=46001&os_version=9&channel=xiaomi&version_code=580&device_type=MI%208&language=zh&resolution=1080*2029&openudid=71c804e61f0cc3c0&update_version_code=5800&app_name=aweme&version_name=5.8.0&os_api=28&device_brand=Xiaomi&ssmix=a&device_platform=android&dpi=440&aid=1128&as=a1f57d5bd2279ce1862466&cp=d37dcb582c68b010e1KuSy&mas=01f86affb7b1bb7207f185f1fe09af17da6c6c2c4c6c1c8ca6c69c  ");






    }
}
