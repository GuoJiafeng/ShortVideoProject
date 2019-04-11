package io.yg.util;

import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {
    public static void main(String[] args) {

        String string1 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";

        String str2 = string1.replaceAll("/", "");

        String[] str = string1.split("[\\s]+(?=[^\\)]*(\\(|$))");
        for (String s : str) {
            System.out.println(s);
        }
    }

    @org.junit.Test
    public void test01() {

        int a = (int) (Math.random()*10);

        System.out.println(a);


        Random random = new Random();
        System.out.println(random.nextInt(9)+1);


    }
}
