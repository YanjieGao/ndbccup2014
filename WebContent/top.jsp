<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
 

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
    

        <script type="text/javascript">
            var _kmq = _kmq || [];
            var _kmk = _kmk || 'febcd4a3c5bcd3b09f9a0e0833493a7222b30e5f';

            function _kms(u) {
                setTimeout(function () {
                    var d = document, f = d.getElementsByTagName('script')[0],
                        s = d.createElement('script');
                    s.type = 'text/javascript';
                    s.async = true;
                    s.src = u;
                    f.parentNode.insertBefore(s, f);
                }, 1);
            }

            _kms('//i.kissmetrics.com/i.js');
            _kms('//doug1izaerwt3.cloudfront.net/' + _kmk + '.1.js');
        </script>

        <script type="text/javascript" src="http://fastly.kaggle.net/content/v/47b68dce8cb6/shared/js/jquery-1.7.2.min.js"></script>
                <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
            <script type="text/javascript" src="http://fastly.kaggle.net/content/v/aea43abe200c/shared/js/kaggle.min.js"></script>
        <script type="text/javascript">

            Kaggle.Current.siteId = 1;
            Kaggle.Current.competitionId = 3445;
            _kmq.push(['identify', '']);
        </script>

    
    <!--[if (gte IE 6)&(lte IE 8)]>
        <script type="text/javascript" src="http://fastly.kaggle.net/content/v/f1f17fea7cee/shared/js/ie/selectivizr.min.js"></script>
    <![endif]-->

    
                                    
                                                                    <link rel="apple-touch-icon" href="http://fastly.kaggle.net/content/v/1e4cdaa83f46/kaggle/img/apple-touch-icon.png" />


    
    <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--页面内容更改代码-->

  


<body class="logged-out  kaggle">
    <div id="wrap"><!-- needed for sticky footer -->







                
        
         

        <!-- header-inside and header -->
            <div id="main">
                




<div id="competition"  >
        <header id="comp-header" >
           <a href="http://www.sogou.com/"><img id="comp-image___" src="image/sg.gif"  /></a>
           
            <div id="comp-header-details">
                <div style="text-align:center" id="ga"><a href="index.jsp"><h1  style="font-family: 华文琥珀;color: #000066;"> 第一届&nbsp;&nbsp;搜狗-中国数据库学术年会智慧杯
                                                        </h1></a></div> 
                <div style="text-align:center"><a href="index.jsp"><h1 style="font-family: 华文琥珀;color: #000066;"  > 万维网知识提取竞赛
                                                        </h1></a></div> 
               <div style="text-align:center">
                   <h1  style="font-size:25px ;font-family: 华文彩云;color: #666699;">竞赛主题：万维网上的实体关系提取
                   </h1>
               </div> 

                

                    <div id="comp-header-stats">
                        <div id="comp-header-stats-progress">
                            <div id="comp-header-stats-teams" style="width:100%">
                                         <a  href="login.jsp" >登陆&nbsp;&nbsp;</a><a href="ForgetPass.jsp">忘记密码&nbsp;&nbsp;</a><a href="xgpass.jsp">修改密码&nbsp;&nbsp;</a> <a href="test.jsp">修改信息&nbsp;&nbsp;</a> <a href="Logout.jsp">登出&nbsp;&nbsp;</a>  
                                         
                                          <%  
  
    if(session.getAttribute("acc")==null)
    
    {   %>未登录<%  }
    else { %>已登录<% } 
    %>    
             
        

                            </div>
                        </div>
                        <div id="comp-header-stats-start"></div>
                        <div id="comp-header-stats-end"></div>
                        <div id="comp-header-stats-prize">已有
                        <% 
                        //注意在welogic中部署，此处需要用application,不能用getservletcontext()
              String            driverclass = /* getServletConfig(). */application.getInitParameter ("driver");
     String   username = /* getServletConfig(). */application.getInitParameter ("username");
     String   password = /* getServletConfig(). */application.getInitParameter ("password");
    String    url = /* getServletConfig(). */application.getInitParameter ("url");
                        
                       
	    	Class.forName(driverclass).newInstance(); 
	    	Connection  con=DriverManager.getConnection(url,username,password); 
	    	Statement stmt=con.createStatement();
	    		//String ss="select *  from ndbc_user where  acc='"+u+"' and pass='"+p+"'";
	    			 
	    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
	    		 		java.sql.PreparedStatement pstmt=con.prepareStatement("select count(*) c from ndbc_user ");
	    		 		//pw.println("<h1>zhixingzhong  "+ss+"</h1>"); 
	    		 		 	ResultSet	prs=pstmt.executeQuery();
	    		 //	rs.next();
	    		 	prs.next();
	    		 	int count=prs.getInt("c");
	    		 	con.close();
	    		 	stmt.close();
	    		 	pstmt.close();
	    		 	prs.close();
	    		 	%>
                       <%=count
                        %>
                      个 团队注册</div>
                    </div>
            </div>
        </header>

        <div class="comp-sidebar">
            

<div class="_panel" id="competition-dashboard">
    <header>
      <a href="index.jsp">  <h1>简介</h1> </a>
    </header>
    <ul id="competition-dashboard-dropdown">
        
        
        
        <li class="cd-info">
            <ul id="pages-flyout">
                          <li>
                        <a  href="index.jsp">竞赛背景及题目描述</a>
                    </li>
                    
                        <li>
                        <a  href="stsjj.jsp">数据集及下载</a>
                    </li>
                
                        
                      <li>
                        <a href="jsyq.jsp">竞赛注册</a>
                    </li>
                    
                 
                    <li>
                        <a href="yz.jsp">验证提交</a>
                    </li>
                    <li>
                        <a href="pj.jsp">评价方法</a>
                    </li>
                <li>
                        <a href="jssj.jsp">竞赛时间</a>
                    </li>
					  <li>
                        <a href="jx.jsp">奖项设置</a>
                    </li>
                    
            </ul>

        </li>

         
        
            


         
        
            

        
        
    </ul>
</div>

    <script type="text/javascript">
        $(function () {
            $(".cd-home").addClass("selected");
        });
    </script>

            

           
    <div class="widget _panel" id="compside-leaderboard_1">
        
        
        <header>
          <a href="zwh.jsp">  <h1>组委会</h1></a>
        </header>
        
       
    </div>
            <div class="widget _panel" id="compside-leaderboard">
        
        
        <header>
         <a href="zxxx.jsp">  <h1>最新消息</h1> </a> 
       </header>
        
        <ol>
         <li  value="3" class="cd-info"><a id="blink" href="m3.jsp" >比赛提交截止时间延期到5月15日<img  src="image/new.gif"  /></a></li>
       
              <li  value="2" class="cd-info"><a id="blink" href="m2.jsp" >验证提交已经开始<img  src="image/new.gif"  /></a></li>
       
                 <li  value="1" class="cd-info"><a id="blink" href="m1.jsp" >比赛信息将与8月中旬发布<img  src="image/new.gif"  /></a></li>
       
                   
        </ol>
                
        
       
    </div>


    <div class="widget _panel" id="compside-discussions">
        <header>
            <h1>微博互动</h1>
           </header>
       

        <ul>
             
                  
          <iframe id="sina_widget_3635304610" style="width:100%; height:500px;" frameborder="0" scrolling="no" src="http://v.t.sina.com.cn/widget/widget_blog.php?uid=3635304610&height=500&skin=wd_01&showpic=1"></iframe>
 
        </ul>

    </div> 
                <div id="partial-stats-ticker"></div>
                <script type="text/javascript">
                    jQuery(function () {
                        jQuery("#partial-stats-ticker").load("/c/3445/partial/stats");
                    });
                </script>
        </div>

  </body>
</html>
