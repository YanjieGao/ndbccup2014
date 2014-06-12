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
                    


                    



<p id="p1" style="text-indent:2em ">     

   
    验证集合是搜狗公司知立方生成的数据集。参赛者给出一份输出文件，每一行的格式为”Id1\tRelation\tId2\n”，例如“中国合伙人的id\t演员\t黄晓明的id”。在验证平台提交后，会得到一个反馈，包括哪一些数据在知立方集合中，以及哪一些不在知立方集合中。知立方的验证集合也是动态变化的，只用于参赛选手的参考，并不作为最终评测的依据。
</p>                    
<p style="text-indent:2em ">  <a href="http://ndbccup2014.sogou.com/download.php?file=sample">sample</a>-验证提交格式示例 

<p style="text-indent:2em ">最终结果提交的入口与验证入口相同，区别为最终结果需要提供url。最终结果提交格式说明：参赛者给出一份输出文件，格式为”Id1\tRelation\tId2\tSourceURL\n”，其中SourceURL为该关系模式挖掘的源站点，必须提供。举例：“中国合伙人的id\t演员\t黄晓明的id\thttp:// movie.douban.com/subject/11529526/”。 
</P>
                    



<p id="p1" >  <%  
 
    if(session.getAttribute("acc")==null)
    
    {   %><p style="text-indent:2em ">您未登录</p><%  }
    else { %>
    
    
    <form enctype="multipart/form-data" action="http://ndbccup2014.sogou.com/upload.php" method="POST">
<input type="hidden" name="mail" value="<%=session.getAttribute("acc") %>">
<input name="upload_file" type="file"><br/>
<input type="submit" value="提交验证">
    </form>
  
    
    <% } 
    %>    </p>
             
        
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
    <%@include file="bottom.jsp" %>> 
  </body>
</html>