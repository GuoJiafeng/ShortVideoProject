package io.yg.util;

import java.util.Random;

public class RandomCodeUtil {

    public static String getCode(Integer lentg) {
        //创建字典
        String str = "1234567890";
        //创建随即类
        Random ran = new Random();
        //创建char数组
        char[] chs = new char[lentg];
        //填充char数组
        String code = "";
        for (int i = 0; i < chs.length; i++) {
            int nextInt = ran.nextInt(str.length());
            chs[i] = str.charAt(nextInt);
        }
        return String.valueOf(chs);
    }
}
