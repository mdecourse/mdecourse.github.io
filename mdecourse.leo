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
<v t="leo.20200520153540.1"><vh>@clean index.html</vh>
<v t="leo.20200520153540.2"><vh>html</vh>
<v t="leo.20200520153540.3"><vh>head</vh></v>
<v t="leo.20200520153540.4"><vh>body</vh>
<v t="leo.20200520153540.5"><vh>reveal div</vh>
<v t="leo.20200520153540.6"><vh>slides div</vh>
<v t="yen.20210625194818.1"><vh>2021 Fall</vh>
<v t="yen.20210625194852.1"><vh>2021 Fall page</vh></v>
</v>
<v t="leo.20200520153540.7"><vh>2021 Spring</vh>
<v t="leo.20200520153540.8"><vh>2021 Spring page</vh></v>
</v>
<v t="leo.20210206154716.1"><vh>2020 fall</vh>
<v t="leo.20210206154716.2"><vh>2020 Fall page</vh></v>
</v>
<v t="leo.20210206155000.1"><vh>2020 Spring</vh>
<v t="leo.20210206155000.2"><vh>2020 Spring page</vh></v>
</v>
<v t="leo.20210206155045.1"><vh>2019 Fall</vh>
<v t="leo.20210206155045.2"><vh>2019 Fall page</vh></v>
</v>
<v t="leo.20210206155543.1"><vh>2019 Spring</vh>
<v t="leo.20210206155543.2"><vh>2019 Spring page</vh></v>
</v>
<v t="leo.20210206162923.1"><vh>2018 Fall</vh>
<v t="leo.20210206162923.2"><vh>2018 Fall page</vh></v>
</v>
<v t="leo.20210206165000.1"><vh>2018 Spring</vh>
<v t="leo.20210206165000.2"><vh>2018 Spring page</vh></v>
</v>
<v t="leo.20210206165947.1"><vh>2017 Spring</vh>
<v t="leo.20210206165947.2"><vh>2017 Spring page</vh></v>
</v>
<v t="leo.20210206161812.1"><vh>2016 Fall</vh>
<v t="leo.20210206161812.2"><vh>2016 Fall page</vh></v>
</v>
<v t="leo.20210206172017.1"><vh>2016 Spring</vh>
<v t="leo.20210206172017.2"><vh>2016 Spring page</vh></v>
</v>
<v t="leo.20210206171323.1"><vh>2015 Fall</vh>
<v t="leo.20210206171323.2"><vh>2015 Fall page</vh></v>
</v>
<v t="leo.20210206171158.1"><vh>2014 Fall</vh>
<v t="leo.20210206171158.2"><vh>2014 Fall page</vh></v>
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
<t tx="leo.20200520153540.1">@language xml
@tabwidth -4
@others

</t>
<t tx="leo.20200520153540.2">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="leo.20200520153540.3">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;
國立虎尾科技大學 機械設計工程系 KMOLab
&lt;/title&gt;
    &lt;meta name="description" content="國立虎尾科技大學 機械設計工程系 KMOLab 課程網站"&gt;
    &lt;meta name="author" content="KMOLab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="reveal/css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="reveal/css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="reveal/lib/css/zenburn.css"&gt;

    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'reveal/css/print/pdf.css' : 'reveal/css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
&lt;/head&gt;

</t>
<t tx="leo.20200520153540.4">&lt;body&gt;
@others
&lt;script src="reveal/lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="reveal/js/reveal.js"&gt;&lt;/script&gt;
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
                { src: 'reveal/lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'reveal/plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'reveal/plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'reveal/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'reveal/plugin/zoom-js/zoom.js', async: true },
                { src: 'reveal/plugin/notes/notes.js', async: true },
                { src: 'reveal/plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;

</t>
<t tx="leo.20200520153540.5">&lt;div class="reveal"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20200520153540.6">&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20200520153540.7">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20200520153540.8">## 國立虎尾科技大學

### 機械設計工程系

#### 2021 Spring

[Eng](http://mde.tw/eng) | [KMOL 網誌](https://mdecourse.blogspot.com/) | [cmstemplate](http://mde.tw/cmstemplate) | [Lab](http://mde.tw/lab) 

[cp2020](http://mde.tw/cp2020) | [MDE&amp;PME 網誌](https://nfumde.blogspot.com/) | [cad2020](http://mde.tw/cad2020) 

[wcmj2021](http://mde.tw/wcmj2021) | [教學影片](https://www.youtube.com/channel/UCJ0Ye3mhMApH0yxAcwCXs5g) | [wcm2021](http://mde.tw/wcm2021) | [cd2021](http://mde.tw/cd2021) 


</t>
<t tx="leo.20210206154716.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206154716.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2020 Fall

[cp2020](http://mde.tw/cp2020) | [cad2020](http://mde.tw/cad2020) 



</t>
<t tx="leo.20210206155000.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206155000.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2020 Spring

[wcmj2020](http://mde.tw/wcmj2020) | [wcm2020](http://mde.tw/wcm2020) | [cd2020](http://mde.tw/cd2020) 


</t>
<t tx="leo.20210206155045.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206155045.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2019 Fall

[cp2019](http://mde.tw/cp2019) | [cad2019](http://mde.tw/cad2019) | [Dart Ex](http://mde.tw/cp2019ag1/content/W10%20%E5%88%86%E7%B5%84%E4%BB%BB%E5%8B%99.html) | [LaTeX to HTML and back](http://mde.tw/cp2019/downloads/from_latex_to_html_and_back.pdf)



</t>
<t tx="leo.20210206155543.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206155543.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2019 Spring

[wcm2019](http://mde.tw/wcm2019) | [cd2019](http://mde.tw/cd2019) 


</t>
<t tx="leo.20210206161812.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206161812.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2016 Fall

[2016fallcpa](http://mde.tw/2016fallcpa) | [2016fallcpb](http://mde.tw/2016fallcpb) | [2016fallcp](http://mde.tw/2016fallcp) | [2016fallcadp](http://mde.tw/2016fallcadp) 

[2016fallcadp](https://github.com/mdecourse/2016fallcadp) | [2016fallcadpa](https://github.com/mdecourse/2016fallcadpa) | [2016fallcadpb](https://github.com/mdecourse/2016fallcpb)



</t>
<t tx="leo.20210206162923.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206162923.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2018 Fall

[vecp2018](http://github.com/mdecourse/vecp2018) | [cp2018](http://mde.tw/cp2018) | [cadp2018](http://mde.tw/cadp2018) 

[Lua](http://mde.tw/vecp2018/lua/SchoolProject/)

[cp2018finalproject](https://mdecp2018.github.io/finalproject-bgx) | [2018fall](https://github.com/mdecourse/2018fall)

[2018fallwiki](https://github.com/scrum-1/scrum-1.github.io/wiki) | [Intro to CAD](http://mde.tw/cadp2018/downloads/intro_cad.pdf)



</t>
<t tx="leo.20210206165000.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206165000.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2018 Spring

[wcms2018](http://github.com/mdecourse/wcms2018) | [cd2018](http://github.com/mdecourse/cd2018) | [wcms-scrum3](https://github.com/mdecourse/wcms-scrum3)


</t>
<t tx="leo.20210206165947.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206165947.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2017 Spring

 [2017springvcd](http://github.com/mdecourse/2017springvcp) | [2017springwcm](http://github.com/mdecourse/2017springwcm) | [2017springcd](http://github.com/mdecourse/2017springcd) 
 [網際機械設計 2D 繪圖](https://cadlab.mde.tw/post/wang-ji-ji-jie-she-ji-2d-hui-tu.html)


</t>
<t tx="leo.20210206171158.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206171158.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2014 Fall

[2014c2](https://github.com/mdecourse/2014c2) | [2014cda](https://github.com/coursemdetw/2014cda) | [2014cdb](https://github.com/coursemdetw/2014cdb)


</t>
<t tx="leo.20210206171323.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206171323.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2015 Fall

[2015wcm](https://github.com/coursemdetw/2015wcm) | [a2015fallhw](https://github.com/mdecourse/a2015fallhw) | [2015wcms](https://github.com/coursemdetw/2015wcms)

[2015fallcpb](https://github.com/2015fallhw/2015fallcpb) | [2015fallcpa](https://github.com/2015fallhw/2015fallcpa] | [2015fallcp](https://github.com/coursemdetw/2015Fall_CP)

[2015fallcadpb](https://github.com/2015fallhw/2015fallcadpb) | [2015fallcadpa](https://github.com/2015fallhw/2015fallcadpa) | [2015fallcadp](https://github.com/coursemdetw/2015Fall_CADP)

[2015cdb](https://github.com/coursemdetw/2015cdb)


</t>
<t tx="leo.20210206172017.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20210206172017.2">## 國立虎尾科技大學

### 機械設計工程系

#### 2016 Spring

[2016springwcm](https://github.com/2015fallhw/2016springwcm) | [2016springcd](https://github.com/2015fallhw/2016springcd)
 
[2016springwcm_final](https://github.com/2015fallhw/2016springwcm_final) | [2016fprintcp_final](https://github.com/2015fallhw/2016springcd_final)


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
<t tx="yen.20210625194818.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;</t>
<t tx="yen.20210625194852.1">## 國立虎尾科技大學

### 機械設計工程系

#### 2021 Fall

[Eng](http://mde.tw/eng) | [cmstemplate](http://mde.tw/cmstemplate) | [Lab](http://mde.tw/lab) 

 [MDE&amp;PME 網誌](https://nfumde.blogspot.com/) | [教學影片](https://www.youtube.com/channel/UCJ0Ye3mhMApH0yxAcwCXs5g) | [KMOL 網誌](https://mdecourse.blogspot.com/)

[cp2021](http://mde.tw/cp2021) | [cad2021](http://mde.tw/cad2021)


</t>
</tnodes>
</leo_file>
