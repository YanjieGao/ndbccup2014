<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
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
       <link type="text/css" rel="stylesheet" href="js/css/validate.css" /> 
	  <script src="js/talent-validate-all.js" language="javascript"></script>
		<script src="js/demo.js" language="javascript">
		
		</script>
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
                    


                    




       
        
       
           <form action="UpdateUser" method="post" id="form1">

<table >


        <% 
                        //注意在welogic中部署，此处需要用application,不能用getservletcontext()
              String            driverclass2 = /* getServletConfig(). */application.getInitParameter ("driver");
     String   username2 = /* getServletConfig(). */application.getInitParameter ("username");
     String   password2 = /* getServletConfig(). */application.getInitParameter ("password");
    String    url2 = /* getServletConfig(). */application.getInitParameter ("url");
                        
                       
	    	Class.forName(driverclass2).newInstance(); 
	    	Connection  con2=DriverManager.getConnection(url2,username2,password2); 
	    	Statement stmt2=con2.createStatement();
	    		//String ss="select *  from ndbc_user where  acc='"+u+"' and pass='"+p+"'";
	    		String acc=session.getAttribute("acc").toString();
	    			 
	    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
	    		 		java.sql.PreparedStatement pstmt2=con2.prepareStatement("select team,linkman,company,teamname,tel from ndbc_user where acc=?");
	    		 		pstmt2.setString(1,acc);
	    		 		//pw.println("<h1>zhixingzhong  "+ss+"</h1>"); 
	    		 		 	ResultSet	prs2=pstmt2.executeQuery();
	    		 //	rs.next();
	    		 	prs2.next();
	    		 	String team=prs2.getString("team");
	    		 	String linkman=prs2.getString("linkman");
	    		 	String tel=prs2.getString("tel");
	    		 	String company=prs2.getString("company");
	    		 	String teamname=prs2.getString("teamname");
	    		 	
	    		 	
	    		 	con2.close();
	    		 	stmt2.close();
	    		 	pstmt2.close();
	    		 	prs2.close();
	    		 	%>
                       
                        
                     

        <tr>
            <td >用户名</td>
            <td >
               <li> <%=session.getAttribute("acc").toString()%></li></br></td>
            <td ></td>
        </tr>
       
        
        <tr>
            <td>联系人姓名</td>
            <td><li>   <input name="linkman" type="text" value="<%=linkman %>" /></li></br></td>
            <td></td>
        </tr>
        <tr>
            <td>电话</td>
            <td>
              <li>  <input name="tel" type="text" value="<%=tel %>" /></li></br></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td >所在单位</td>
            <td >
            <li>    <input name="company" type="text" value="<%=company %>" /></li></br></td>
            <td ></td>
        </tr>
        <tr>
            <td >团队名称</td>
            <td >
            <li>    <input name="teamname" type="text" value="<%=teamname %>" /></li></br></td>
            <td ></td>
        </tr>
        <tr>
            <td>团队成员<br/>
                (请用,分隔姓名)
           </td>
            <td>
             <li>   <textarea  name="team" rows="4" style="width:100%"   ><%=team %></textarea></li></br></td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>
                <input type="button" value="修改信息" onclick="checkandsubmit()" />
           </td>
            <td><input type="button" value="返回主页" onClick="javascript:location.href=&apos;index.jsp&apos;">
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
<br/>
    
   
      

</form>       
        
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
  <script id="talent" language="javascript"  >
	new tt.LV().set(0, 30).add("acc");  
	new  tt.LV().set(0, 10).add("pass");  
	new  tt.LV().set(0, 10).add("linkman");
	new  tt.LV().set(0, 20).add("company");
	new  tt.LV().set(0, 100).add("team");
	new  tt.LV().set(0, 20).add("teamname");
	
	
	
	tt.vf.req.add("acc", "pass1","pass2","linkman","tel","company","team"); 
	tt.vf.email.add("acc"); 
    new tt.RV().set(new RegExp("^[a-zA-Z0-9]{0,10}$"), "只能输入a-z,A-Z,0-9,且长度为1-10").add("pass"); 
	new tt.RV().set(new RegExp("^[0-9-]{0,15}$"), "请输入电话号码正确格式0-9数字或者符号-").add("tel"); 
	new tt.RV().set(new RegExp("^[a-zA-Z\u4e00-\u9fa5,，]{0,100}$"), "请输入用中文或英文并用,号分隔").add("team"); 
	
	var field1 = new tt.Field("第一次输入密码", "pass1");  
	new tt.CV().add(new tt.Field('第二次输入密码',"pass2")).set('v', "==", field1); 
		
	 

		
	function checkandsubmit()
	{
		if(tt.validate())
	  	document.getElementById("form1").submit();
	}
	</script>
</html>
    