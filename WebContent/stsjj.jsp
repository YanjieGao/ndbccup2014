<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style type="text/css">
    #weibo {
        width: 162px;
        height: 343px;
    }
</style>

<!--[if lt IE 7 ]><html class="ie ie6 lte7 lte8 lte9"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7 lte7 lte8 lte9"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8 lte8 lte9"><![endif]-->
<!--[if IE 9 ]><html class="ie ie9 lte9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html ><!--<![endif]-->

<head>
    
    <script type="text/javascript">(function (a, c) { a.__qbaka_eh = a.onerror; a.__qbaka_reports = []; a.onerror = function () { a.__qbaka_reports.push(arguments); if (a.__qbaka_eh) try { a.__qbaka_eh.apply(a, arguments) } catch (b) { } }; a.onerror.qbaka = 1; a.qbaka = { report: function () { }, customParams: {}, set: function (a, b) { qbaka.customParams[a] = b }, exec: function (a) { try { a() } catch (b) { qbaka.reportException(b) } }, reportException: function () { } }; var b = c.createElement("script"), e = c.getElementsByTagName("script")[0], d = function () { e.parentNode.insertBefore(b, e) }; b.id = "qbaka"; b.type = "text/javascript"; b.async = !0; b.src = "//cdn.qbaka.net/reporting.js"; "[object Opera]" == a.opera ? c.addEventListener("DOMContentLoaded", d) : d(); qbaka.key = "a8cc8de545f768e3f30471f31f733a91" })(window, document); qbaka.options = { autoStacktrace: 1, trackEvents: 1 };</script>
    
    <title>搜狗-中国数据库学术会议万维网知识提取大赛</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index, follow" />
    
    
    
        <meta name="keywords" content="搜狗，中国数据库学术会议，万维网只是，面向互联网数据，实体关系挖掘" />
            <meta name="description" content="搜狗-中国数据库学术会议万维网知识提取大赛" />

    
         <link rel="stylesheet" href="base.css" type="text/css" />
        <link rel="stylesheet" href="kaggle-site.css" type="text/css" />
        </head>
  <body>
  <%@include file="top.jsp" %>
<div class="description comp-content with-sidebar _panel" >
            <header class='info'>
                <div class="simple-steps">
                   
                   
                        <a  class="submit" ></a>
                </div>
            </header>
        
    
      
        <div class="comp-content-inside">
            <div id="competition-intro">
                

                
            </div>

                <div id="comp-homepage-content" class="cms-page _buttons">
                    


                    
<p id="p0"><strong>  数据集分为三个文件，分别为实体数据集、关系模式集合和参考文档集：</strong>


<p id="p1"><strong>  实体数据集:</strong>
</p>
                    <p>  1、	Id，指的是一个实体的唯一编号，类似于身份证号对于一个人的意义。
 </p>
                    <p>  2、	Name，指的是一个实体的名称，类似于姓名对于一个人的意义。需要注意的是在现实世界中，每个实体的名称可能并不是唯一的，如“斯蒂芬-斯皮尔伯格”和“史蒂文-斯皮尔伯格”可能指代同一个人。这里我们对每个实体仅给出一个名称。</p>
                    <p>  3、	Class，指的是实体的类别，类似于身份证上面的民族、籍贯等对于一个人的意义。本题目中实体类别主要包括歌曲、人、电视剧、电影和书籍等，这些类别的实体集合之间都是不相交的。即每个实体只被赋予了一个类别。</p>
                    <p>  4、	Description，指的是实体的文本描述信息，类似于个人简介对于一个人的意义。
 </p>
                    <p>  实体数据集的格式为：”Id\tName\tClass\tDescription\n”，每行描述一个实体。
 </p>
        <br/>
<br/>
             
   <p id="p1">   <strong>   关系模式集合:</strong>
</p>
                    <p style="text-indent:2em">     里面包含了需要挖掘的实体关系名称，定义如下：
</p>
                    <p>     1、	Class，和实体数据集的Class含义一致。</p>
                    <p>    2、	Relation，是指关系名称，本题目只列出了一部分关系。请注意Relation表示的是一个有向的关系。比如“人物1\t子女\t人物2”，表示“人物1”的“子女”为“人物2”，反过来则认为是错误的数据。需要特殊说明的是“夫妻”关系，其含义包括前妻、前夫等。参赛者有兴趣还可以自己构造感兴趣的关系并进行计算，并把数据提供给我们。</p>
                    <p style="text-indent:2em">     关系模式的格式为：”Class1\tRelation\tClass2\n”
本题目共包含以下17种关系模式：</p>
                    <p>     1.	人物\t父母\t人物，例：谢霆锋id\t父母\t谢贤id，表示谢霆锋的父母为谢贤，父母关系模式包含父亲、母亲，并且为有向的，如果谢贤id\t父母\t谢霆锋id，则认为是错误数据。后面的示例都略去了id，用于表征实体。</p>
                    <p>     2.	歌曲\t演唱者\t人物，例：菊花台\t演唱者\t周杰伦，表示菊花台的演唱者为周杰伦。
</p>
                    <p>     3.	歌曲\t作词\t人物，例：二十岁的眼泪\t作词\t陈升，表示二十岁的眼泪的作词人为陈升。
</p>
                    <p>     4.	电视剧\t演员\t人物，例：步步惊心\t演员\t刘诗诗，表示步步惊心的演员有刘诗诗。</p>
                    <p>     5.	电影\t演员\t人物，例：中国合伙人\t演员\t黄晓明，表示中国合伙人的演员有黄晓明。</p>
                    <p>     6.	歌曲\t作曲\t人物，例：冰雨\t作曲\t 潘协庆，表示冰雨的作曲人为潘协庆。</p>
                    <p>     7.	书籍\t作者\t人物，例：三重门\t作者\t韩寒，表示三重门的作者为韩寒。</p>
                    <p>     8.	电视剧\t原著\t书籍，例：还珠格格\t原著\t还珠格格，表示电视剧还珠格格的原著为小说还珠格格，原著关系模式是有向的。</p>
                    <p>     9.	电影\t原著\t书籍，例：青春之歌\t原著\t青春之歌，表示电影青春之歌的原著为书籍青春之歌，原著关系模式是有向的。
</p>
                    <p>     10.	人物\t兄弟姐妹\t人物，例：梁思达\t兄弟姐妹\t梁思顺，表示梁思达的兄弟姐妹为梁思顺，兄弟姐妹关系模式包含哥哥、姐姐、妹妹、弟弟等，并且是双向的，梁思顺\t兄弟姐妹\t梁思达也认为是正确的数据。
</p>
                    <p>     11.	人物\t夫妻\t人物，例：刘德华\t夫妻\t朱丽倩，表示刘德华的夫妻为朱丽倩，夫妻关系模式包含妻子、丈夫、前妻、前夫等，并且为双向的，朱丽倩\t夫妻\t刘德华也认为是正确数据。
</p>
                    <p>     12.	电视剧\t音乐原声\t歌曲，例：西游记张卫健版\t音乐原声\t西游记，表示西游记张卫健版的音乐原声为西游记，音乐原声关系模式包含主题曲、片头曲、片尾曲等。
</p>
                    <p>     13.	电影\t音乐原声\t歌曲，例：满城尽带黄金甲\t音乐原声\t菊花台，表示满城尽带黄金甲的音乐原声为菊花台，音乐原声关系模式包含主题曲、片头曲、片尾曲等。</p>
                    <p>     14.	电视剧\t编剧\t人物，例：京华烟云\t编剧\t林语堂，表示京华烟云的编剧为林语堂。</p>
                    <p>     15.	电影\t编剧\t人物，例：锦衣卫\t编剧\t李仁港，表示锦衣卫的编剧为李仁港。</p>
                    <p>     16.	电视剧\t导演\t人物，例：京华烟云\t导演\t张子恩，表示京华烟云的导演为张子恩。</p>
                    <p>     17.	电影\t导演\t人物，例：致我们终将逝去的青春\t导演\t赵薇，表示致我们终将逝去的青春的导演为赵薇。
</p>
<br/>
<br/>

<p id="p1"> <strong>    参考文档集:</strong></p>
                    <p style="text-indent:2em ">     为方便参赛者获取一些网页信息，我们提供一些供参考的网页文档，文案编码为gbk，主要来源百度百科、豆瓣、互动百科、优酷、电视猫等站点。请注意，构建知识库不一定需要这些文档。用户可以自由的从互联网等公开渠道获取关于实体的信息。
	</p>
                    <p style="text-indent:2em ">     参考文档的格式为：</p>
                    <p style="text-indent:2em ">     网页的url&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 正文字节数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	正文
</p>      
<p style="text-indent:2em ">   
</p>    
<br/>
<br/>
<p ><strong> 数据集下载地址：</strong>
</p>  
<p >   1. 关系模式集合
</p><p style="text-indent:2em "> <a href="http://ndbccup2014.sogou.com/download.php?file=schema">schema</a>  -关系模式集合文档
</p>
<p >  2. 实体数据集 
</p>
<p style="text-indent:2em ">   四个类别的实体集放在一个压缩包下，包括书籍、影视剧、人物、歌曲
</p>
<p style="text-indent:2em ">  <a href="http://ndbccup2014.sogou.com/download.php?file=entity.tar.gz">entity.tar.gz</a>  -实体数据集文档 
</p>
<p >  3. 参考文档集 
</p>
<p style="text-indent:2em ">  由于参考文档太大（37G），将其分成5个文件分别下载 
</p>
<p style="text-indent:2em ">  <a href="http://ndbccup2014.sogou.com/download.php?file=document1.tar.gz">document1.tar.gz</a> -参考文档集文档-1
</p>
<p style="text-indent:2em ">   <a href="http://ndbccup2014.sogou.com/download.php?file=document2.tar.gz">document2.tar.gz</a>-参考文档集文档-2
</p>
<p style="text-indent:2em ">   <a href="http://ndbccup2014.sogou.com/download.php?file=document3.tar.gz">document3.tar.gz</a>-参考文档集文档-3
</p>
<p style="text-indent:2em ">   <a href="http://ndbccup2014.sogou.com/download.php?file=document4.tar.gz">document4.tar.gz</a>-参考文档集文档-4
</p>
<p style="text-indent:2em ">   <a href="http://ndbccup2014.sogou.com/download.php?file=document5.tar.gz">document5.tar.gz</a>-参考文档集文档-5
</p>

   

<%@ include  file="zhuban.jsp" %>

                </div>
        </div>
    </div>


<script type="text/javascript">
    $(document).ready(function () {
        $('#comp-header-details h1').textfill({ maxFontPixels: 26, innerTag: 'a' });
    });
</script>

           
   <!-- wrap -->  
    <%@include file="bottom.jsp" %>
  </body>
</html>
    