package io.yg.util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;

/**
 * Create by GuoJF on 2019/4/17
 */
public class ShellUtil {


    public static void main(String[] args) {

        ShellUtil.exceScript("", ShellUtil.LINUX);

    }

    static final String LINUX = "Linux";
    static final String WINDOWS = "Windows";


    static String exceScript(String script, String type) {

        Process process = null;
        String baseSehll = null;
        String returnValue = "";

        try {

            if (type == WINDOWS) {
                baseSehll = "cmd";

            } else if (type == LINUX) {
                baseSehll = "";
            }

            process = Runtime.getRuntime().exec(baseSehll + " " + script);


            InputStream processInputStream = process.getInputStream();

            byte[] bytes = new byte[1024];

            int index = 0;


            while ((index = processInputStream.read(bytes)) != -1) {

                returnValue += new String(bytes, 0, index, "UTF-8");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return returnValue;
    }
}
