$(function () {




    let item = localStorage.getItem("tokenid");
    if (item == null) {

        localStorage.setItem("tokenid", UUID());
        console.log("UUID不存在已经重新设置，新的ID的为" + localStorage.getItem("tokenid"))
    } else {

        console.log("UUID已经存在，为" + localStorage.getItem("tokenid"))

    }

    var md = new MobileDetect(window.navigator.userAgent);
    operationSysVersion = '';
    operationSys = '';

    //var device = device.default
    if (device.mobile()) {

        console.log(md.os())
        console.log("Mobile")
        operationSys = md.phone()
        operationSysVersion = md.os()


    } else {
        operationSys = getOsInfo().name;
        operationSysVersion = getOsInfo().version;
    }

    $.ajax({
        url: "LogController/getLog",
        type: "post",
        data: {
            operationSysVersion: operationSysVersion,
            ip: returnCitySN["cip"],
            city: returnCitySN["cname"],
            browserName: getBrowser(),
            operationSys: operationSys,
            time: formatDateTime(new Date().getTime()),
            browserLang: getBrowserLang(),
            userAgent: navigator.userAgent,
            tokenid: localStorage.getItem("tokenid"),
            pagename: window.location.href

        },
        dataType: "json",
        success: function (result) {
            console.log(result)

        }
    });


    /*

        var jquery = document.createElement('script');
        jquery.src = "https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js";//若调试页面是https的这里也修改为https.
        document.getElementsByTagName('head')[0].appendChild(jquery);
        jQuery.noConflict();
    */

    //http://app.cet.edu.cn:7066/baas/app/setuser.do?method=UserVerify


    /*  var ks_data = {

          "ks_xm": "",

          "ks_sfz": "",

          "jb": "2"

      };

      $.ajax({
          url: "http://app.cet.edu.cn:7066/baas/app/setuser.do?method=UserVerify",
          type: "post",
          data: {
              "action": "",

              "params": JSON.stringify(ks_data)
          },
          dataType: "jsonp",
          success: function (result) {
              console.log(result.ks_bh)

          }
      });


      console.log(formatDateTime(new Date().getTime()))*/


});


function UUID() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}


function getBrowser() {
    var UserAgent = navigator.userAgent.toLowerCase();
    var browser = null;
    var browserArray = {
        IE: window.ActiveXObject || "ActiveXObject" in window, // IE
        Chrome: UserAgent.indexOf('chrome') > -1 && UserAgent.indexOf('safari') > -1, // Chrome浏览器
        Firefox: UserAgent.indexOf('firefox') > -1, // 火狐浏览器
        Opera: UserAgent.indexOf('opera') > -1, // Opera浏览器
        Safari: UserAgent.indexOf('safari') > -1 && UserAgent.indexOf('chrome') == -1, // safari浏览器
        Edge: UserAgent.indexOf('edge') > -1, // Edge浏览器
        QQBrowser: /qqbrowser/.test(UserAgent), // qq浏览器
        WeixinBrowser: /MicroMessenger/i.test(UserAgent) // 微信浏览器
    };
    for (var i in browserArray) {
        if (browserArray[i]) {
            browser = i;
        }
    }
    return browser;
}


function getOperationSys() {
    var OS = '';
    var OSArray = {};
    var UserAgent = navigator.userAgent.toLowerCase();
    OSArray.Windows = (navigator.platform == 'Win32') || (navigator.platform == 'Windows');
    OSArray.Mac = (navigator.platform == 'Mac68K') || (navigator.platform == 'MacPPC')
        || (navigator.platform == 'Macintosh') || (navigator.platform == 'MacIntel');
    OSArray.iphone = UserAgent.indexOf('iPhone') > -1;
    OSArray.ipod = UserAgent.indexOf('iPod') > -1;
    OSArray.ipad = UserAgent.indexOf('iPad') > -1;
    OSArray.Android = UserAgent.indexOf('Android') > -1;
    for (var i in OSArray) {
        if (OSArray[i]) {
            OS = i;
        }
    }
    return OS;
}

function getBrowserLang() {
    var currentLang = navigator.language;
    if (!currentLang) {
        currentLang = navigator.browserLanguage;
    }
    return currentLang;
}


function getOsInfo() {
    var userAgent = navigator.userAgent.toLowerCase();
    var name = 'Unknown';
    var version = "Unknown";
    if (userAgent.indexOf("win") > -1) {
        name = "Windows";
        if (userAgent.indexOf("windows nt 5.0") > -1) {
            version = "Windows-2000";
        } else if (userAgent.indexOf("windows nt 5.1") > -1 || userAgent.indexOf("windows nt 5.2") > -1) {
            version = "Windows-XP";
        } else if (userAgent.indexOf("windows nt 6.0") > -1) {
            version = "Windows-Vista";
        } else if (userAgent.indexOf("windows nt 6.1") > -1 || userAgent.indexOf("windows 7") > -1) {
            version = "Windows-7";
        } else if (userAgent.indexOf("windows nt 6.2") > -1 || userAgent.indexOf("windows 8") > -1) {
            version = "Windows-8";
        } else if (userAgent.indexOf("windows nt 6.3") > -1) {
            version = "Windows-8.1";
        } else if (userAgent.indexOf("windows nt 6.2") > -1 || userAgent.indexOf("windows nt 10.0") > -1) {
            version = "Windows-10";
        } else {
            version = "Unknown";
        }
    } else if (userAgent.indexOf("iphone") > -1) {
        name = "Iphone";
    } else if (userAgent.indexOf("mac") > -1) {
        name = "Mac";
    } else if (userAgent.indexOf("x11") > -1 || userAgent.indexOf("unix") > -1 || userAgent.indexOf("sunname") > -1 || userAgent.indexOf("bsd") > -1) {
        name = "Unix";
    } else if (userAgent.indexOf("linux") > -1) {
        if (userAgent.indexOf("android") > -1) {
            name = "Android"
        } else {
            name = "Linux";
        }

    } else {
        name = "Unknown";
    }
    var os = new Object();
    os.name = name;
    os.version = version;
    return os;
    //document.write("系统：" + os.name + "版本:" + os.name)
}


function formatDateTime(inputTime) {
    var date = new Date(inputTime);
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    m = m < 10 ? ('0' + m) : m;
    var d = date.getDate();
    d = d < 10 ? ('0' + d) : d;
    var h = date.getHours();
    h = h < 10 ? ('0' + h) : h;
    var minute = date.getMinutes();
    var second = date.getSeconds();
    minute = minute < 10 ? ('0' + minute) : minute;
    second = second < 10 ? ('0' + second) : second;
    return y + '-' + m + '-' + d + ' ' + h + ':' + minute + ':' + second;
};