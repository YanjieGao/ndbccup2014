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
                    


                    



<p id="p1" style="text-indent:2em ">     参赛者给出一份输出文件，格式为”Id1\tRelation\tId2\tSourceURL\n”，其中SourceURL为该关系模式挖掘的源站点，必须提供。
 </p>
                    <p style="text-indent:2em ">   在截止日期之后，搜狗公司会评测精度和召回率。评测的方法如下：
 </p>
                    <p>   1、		单个关系模式的准确率
 </p>
                    <p style="text-indent:2em ">   对于输出结果的每一行数据”Id1\tRelation\tId2\tSourceURL\n”，搜狗公司会将其转化为 “Class1\tRelation\tClass2\tId1\tId2\n”，其中Id1是属于Class1的实体，Id2是属于Class2的实体。对于每一个关系模式”Class1\tRelation\tClass2\n”，随机抽取一定数量的结果文件进行人工标注。如果”Id1”和”Id2”都是正确的，即它们之间存在这个关系，则计入正确集，否则计入错误集。每一个关系模式的准确率为（正确集/抽样集）。 </p>
                    <p>   2、	单个关系模式的召回率
 </p>
                    <p style="text-indent:2em ">   对于每一种模式，统计完所有参赛队的准确率之后，将参赛队中最大的预计正确召回关系数量作为召回全集，其中预计正确召回关系数量=参赛队准确率*该参赛队提取关系数量。
 </p>
                    <p style="text-indent:2em ">   例如对于“电视剧\t演员\t人物”这个关系模式
 </p>
                    <p>   团队名&nbsp;&nbsp;&nbsp;&nbsp; 提取关系数量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 准确率&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 预计正确召回关系数量
 </p>
                    <p>   Team1&nbsp;&nbsp;&nbsp;&nbsp; 10000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 95%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9500
 </p>
                    <p>   Team2&nbsp;&nbsp;&nbsp;&nbsp; 20000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 80%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16000
 </p>
                    <p>   Team3&nbsp;&nbsp;&nbsp;&nbsp; 10000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 90%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9000</p>
                    <p style="text-indent:2em ">   预计正确召回关系数量最大的为Team2，为16000，则将Team2的该关系模式的召回率设为1。Team1的召回率为9500/16000=0.5938。</p>
                    <p>   3、	总体评价
 </p>
                    <p style="text-indent:2em ">   对于每一个关系模式，计算一个F值，计算公式为2/(1.5/准确率+0.5/召回率)，公式会略偏重于准确率。准确率为0时，F值为0。</p>
                    <p style="text-indent:2em ">   在上例中，Team1的F值为2/(1.5/0.95+0.5/0.5938)=0.8261，Team2的F值为2/(1.5/0.8+0.5/1)=0.8421。
 </p>
                    <p style="text-indent:2em ">   所有关系模式的F值的算术平均值为参赛队的总体得分。
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
    