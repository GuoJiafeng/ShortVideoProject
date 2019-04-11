package io.yg.controller;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("LogController")
public class LogController {


    private Logger logger = Logger.getLogger(LogController.class);

    @RequestMapping("getLog")
    public @ResponseBody
    String
    getLog(String time, String browserName, String operationSys, String operationSysVersion, String browserLang, String ip, String city, String userAgent, String tokenid, String pagename) {


        if (browserName != null || operationSys != null || browserLang != null || ip != null || city != null) {

            //System.out.println("IP：" + ip + "-浏览器：" + browserName + "-" + "操作系统：" + operationSys + "-语言：" + browserLang + "-地区：" + city);
            //System.out.println("" + ip + "-" + browserName + "-" + "" + operationSys + "-"+operationSysVersion+"-"+ browserLang + "-" + city+userAgent);
            System.out.println(userAgent);


            String str2 = userAgent.replaceAll("/", "");

            String[] str = str2.split("[\\s]+(?=[^\\)]*(\\(|$))");

            if (str[1].contains("Linux")) {
                //获取Android手机版本

                String[] split = str[1].split("Android");
                String[] split1 = split[1].split("; ");
                operationSysVersion = "Android-" + split1[0].replaceAll(" ", "");


                //获取手机厂商型号
                String[] s = str[1].split("; ")[str[1].split("; ").length - 1].split(" Build");
                operationSys = s[0].replaceAll(" ", "-");

            }
            if (str[1].contains("iPhone") || str[1].contains("iPad")) {

                //获取ios设备的系统版本
                String[] split = str[1].split(";");

                operationSysVersion = "iOS-" + split[1].split(" ")[3].replaceAll("_", ".");


                //获取apple设备类型
                String[] s = str[1].split(";");
                operationSys = s[0].replaceAll("\\(", "");

            }

            if (browserName.contains("WeixinBrowser") || str[1].contains("vx;")) {

                browserName = browserName.replaceAll(" wv\\)", "");
                System.out.println(browserName);

                //获取手机厂商型号
                String[] s = str[1].split(" Build");

                String[] split2 = s[0].split(";");


                operationSys = split2[2];

                if (operationSys.endsWith(" ")) {
                    operationSys = operationSys.substring(0, operationSys.length() - 1);
                }

                if (operationSys.startsWith(" ")) {
                    operationSys = operationSys.substring(1, operationSys.length());
                }
            }

            logger.info(tokenid + " " + pagename + " " + time + " " + ip + " " + browserName + " " + "" + operationSys + " " + operationSysVersion + " " + browserLang + " " + city + " " + "thisisshortvideoproject'slog");


            return "log send success";
        } else {

            return "log send failed";
        }


    }

}
