!function (e) {
    function t(e, t) {
        var n = document.createElement("script");
        return n.src = e, n.async = !1, n.charset = "utf-8", t ? l.appendChild(n) : h.appendChild(n), n
    }

    function n(e, t) {
        var n = document.createElement("link");
        return n.rel = "stylesheet", n.type = "text/css", n.href = e, t ? l.appendChild(n) : h.appendChild(n), n
    }

    function a(e) {
        if (!u) {
            for (var a, i = 0, r = e.length; i < r; i++) a = e[i], d.test(a) && t(a, !1), c.test(a) && n(a, !1);
            l.appendChild(h), u = !0
        }
    }

    function i(e) {
        var t, n, a, i, r, o, d,
            c = new Array((-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), (-1), 62, (-1), (-1), (-1), 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, (-1), (-1), (-1), (-1), (-1), (-1), (-1), 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, (-1), (-1), (-1), (-1), (-1), (-1), 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, (-1), (-1), (-1), (-1), (-1));
        for (o = e.length, r = 0, d = ""; r < o;) {
            do t = c[255 & e.charCodeAt(r++)]; while (r < o && t == -1);
            if (t == -1) break;
            do n = c[255 & e.charCodeAt(r++)]; while (r < o && n == -1);
            if (n == -1) break;
            d += String.fromCharCode(t << 2 | (48 & n) >> 4);
            do {
                if (a = 255 & e.charCodeAt(r++), 61 == a) return d;
                a = c[a]
            } while (r < o && a == -1);
            if (a == -1) break;
            d += String.fromCharCode((15 & n) << 4 | (60 & a) >> 2);
            do {
                if (i = 255 & e.charCodeAt(r++), 61 == i) return d;
                i = c[i]
            } while (r < o && i == -1);
            if (i == -1) break;
            d += String.fromCharCode((3 & a) << 6 | i)
        }
        return d
    }

    function r(e, n) {
        var r;
        e = n ? i(e) : e, r = t(e, !0), r.onload = r.onreadystatechange = function () {
            this.readyState && "loaded" != this.readyState && "complete" != this.readyState || a(window.ne_cloud_files)
        }, r.onerror = function () {
        }
    }

    function o() {
        var e = navigator.userAgent.toLowerCase(), t = "ipad" == e.match(/ipad/i),
            n = "iphone os" == e.match(/iphone os/i), a = "midp" == e.match(/midp/i),
            i = "rv:1.2.3.4" == e.match(/rv:1.2.3.4/i), r = "ucweb" == e.match(/ucweb/i),
            o = "android" == e.match(/android/i), d = "windows ce" == e.match(/windows ce/i),
            c = "windows mobile" == e.match(/windows mobile/i);
        return t || n || a || i || r || o || d || c
    }

    var d = /\.js$/, c = /\.css$/, h = document.createDocumentFragment(), u = !1,
        l = document.head || document.getElementsByTagName("head")[0];
    window.yunManualLoad || window.yunModuleEnv || (o() ? r("aHR0cHM6Ly9hcGkuZ2VudGllLjE2My5jb20vbW9iaWxlL2xpdmVzY3JpcHQuaHRtbA==", !0) : r("aHR0cHM6Ly9hcGkuZ2VudGllLjE2My5jb20vcGMvbGl2ZXNjcmlwdC5odG1s", !0)), e.Tie = e.Tie || {}, e.Tie.loader = r
}(window);
