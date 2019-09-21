<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="yen.20161112105128.1"><vh>@settings</vh>
<v t="yen.20161112105128.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="yen.20161112105128.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20170830094232.1"><vh>about mde.tw</vh></v>
<v t="yen.20161105160252.1"><vh>@clean index.html</vh>
<v t="yen.20161105160252.2"><vh>html</vh>
<v t="yen.20161105160252.3"><vh>head</vh></v>
<v t="yen.20161105160252.4"><vh>body</vh>
<v t="yen.20161105160252.5"><vh>reveal div</vh>
<v t="yen.20161105160252.6"><vh>slides div</vh>
<v t="leo.20190701113111.1"><vh>封面投影片 2019 Fall</vh>
<v t="leo.20190701113111.2"><vh>封面投影片內容 2019 Fall</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
<v t="leo.20181112074712.1"><vh>@button https server</vh></v>
<v t="leo.20181112074725.1"><vh>@button ipv6 https server</vh></v>
<v t="leo.20170915101117.1"><vh>temp</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20170830094232.1">mdecourse.github.io 透過 CNAME 與 github 兩台 DNS server 的設定所完成的 mde.tw 轉址

mde.tw 即 mdecourse.github.io
相關說明: http://project.mde.tw/blog/ji-jie-she-ji-gong-cheng-wang-zhan-de-duan-wang-zhi.html</t>
<t tx="leo.20170915101117.1">[kmolab](http://chiamingyen.github.io/kmolab/blog)-[kmolab.github.io/blog](http://kmolab.github.io/blog) ([倉儲](https://github.com/kmolab))</t>
<t tx="leo.20181112074712.1">@language python
import os
import subprocess
import threading
import http.server, ssl

def domake():
    # build directory
    os.chdir("./")
    server_address = ('localhost', 5443)
    httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print(os.getcwd())
    print("5443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20181112074725.1">@language python
import os
import subprocess
import threading
import socket
import http.server, ssl

class HTTPServerV6(http.server.HTTPServer):
    address_family = socket.AF_INET6
  
def domake():
    # build directory
    os.chdir("./")
    ipv6_address = '::1'
    server_address = (ipv6_address, 6443)
    #httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd = HTTPServerV6(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print("6443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20190701113111.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;

</t>
<t tx="leo.20190701113111.2">## 國立虎尾科技大學

### 機械設計工程系

&lt;!-- [網際內容管理網誌](https://2019wcm.blogspot.com/) --&gt;

[KMOLab 教學影片](https://www.youtube.com/channel/UCJ0Ye3mhMApH0yxAcwCXs5g/videos)

[2019 Fall 計算機程式](http://mde.tw/cp2019)

[2019 Fall 電腦輔助設計實習](http://mde.tw/cad2019)

</t>
<t tx="yen.20161105160252.1">@language xml
@tabwidth -4
@others

</t>
<t tx="yen.20161105160252.2">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="yen.20161105160252.3">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;
國立虎尾科技大學機械設計工程系 KMOLab 課程網站
&lt;/title&gt;
    &lt;meta name="description" content="國立虎尾科技大學機械設計工程系 KMOLab 課程網站, 包括計算機程式, 網際內容管理, 電腦輔助設計實習與協同產品設計實習等."&gt;
    &lt;meta name="author" content="MDE Course KMOLab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/lib/css/zenburn.css"&gt;
    &lt;link rel="icon" href="./favicon.ico" type="image/x-icon" /&gt;
    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'https://cad-lab.github.io/cadlab_data/reveal/css/print/pdf.css' : 'https://cad-lab.github.io/cadlab_data/reveal/css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="https://cad-lab.github.io/cadlab_data/reveal/lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
    &lt;script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"&gt;&lt;/script&gt;
&lt;script&gt;
     (adsbygoogle = window.adsbygoogle || []).push({
          google_ad_client: "ca-pub-2140091590744860",
          enable_page_level_ads: true
     });
&lt;/script&gt;
&lt;/head&gt;

</t>
<t tx="yen.20161105160252.4">&lt;body&gt;
@others
&lt;script src="https://cad-lab.github.io/cadlab_data/reveal/lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="https://cad-lab.github.io/cadlab_data/reveal/js/reveal.js"&gt;&lt;/script&gt;
&lt;script&gt;
        // More info https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,

            transition: 'slide', // none/fade/slide/convex/concave/zoom

            // More info https://github.com/hakimel/reveal.js#dependencies
            dependencies: [
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/zoom-js/zoom.js', async: true },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/notes/notes.js', async: true },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;
</t>
<t tx="yen.20161105160252.5">&lt;div class="reveal"&gt;
@others
&lt;/div&gt;
</t>
<t tx="yen.20161105160252.6">&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
@others
&lt;/div&gt;
</t>
<t tx="yen.20161112105128.1"></t>
<t tx="yen.20161112105128.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="yen.20161112105128.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
</tnodes>
</leo_file>
