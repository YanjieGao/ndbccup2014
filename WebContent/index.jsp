<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
                    


                    



<p id="p1" style="text-indent:2em ">   面向互联网数据的实体关系挖掘（Web-based Entity Relation Extraction)是近几年的热门话题，面向互联网数据的实体关系的构建对于语义搜索和文本理解都有很重要的意义。在面向互联网数据的实体关系构建过程中，实体的提取以及实体之间的关系提取是至关重要的。由于在现实世界中，实体是有歧义的，因此将提取出来的实体进行实体排歧也很关键。所谓实体歧义，是指一个实体可以拥有多个不同的名字，并且一个名字也有可能指代多个不同的实体。举例来说，实体“清华大学”拥有它的全称和简称“清华”多个名字，人名“李娜”可以指代网球运动员“李娜”，跳水运动员“李娜”，歌手“李娜”以及另外一些名字叫做“李娜”的人。实体排歧就是将从文本中提取出来的实体名字映射到它所指代的实体的过程。在排歧完成之后，我们得到了该名字所指代的实体。下一个步骤就是要计算实体之间的关系。例如，歌手“李娜”和“中华人民共和国”之间的关系是“公民”。将实体和实体之间的关系都提取出来之后，我们就可以将现实世界中的实体以及实体之间存在的关系构建成一个中文面向互联网数据的实体关系。 </p>
  
      <p id="p2" style="text-indent:2em ">  本题目给定数据集合中的实体，其中每个实体通过其所属的类别以及文本描述信息唯一确定。另外我们给出了互联网搜索用户感兴趣的一些关系名称。本题目的目标是计算出存在这些关系的实体对集合。</p>
  
                
        
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