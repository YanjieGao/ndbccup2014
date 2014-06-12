package com;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.mail.internet.MimeUtility;

//import org.apache.catalina.Session;
import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;
import java.util.Random;
/**
 * Servlet implementation class ForgetPass
 */
public class ForgetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPass() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public static String genRandomNum(int pwd_len){
    	  //35是因为数组是从0开始的，26个字母+10个数字
    	  final int  maxNum = 36;
    	  int i;  //生成的随机数
    	  int count = 0; //生成的密码的长度
    	  char[] str = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
    	    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
    	    'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
    	  
    	  StringBuffer pwd = new StringBuffer("");
    	  Random r = new Random();
    	  while(count < pwd_len){
    	   //生成随机数，取绝对值，防止生成负数，
    	   
    	   i = Math.abs(r.nextInt(maxNum));  //生成的数最大为36-1
    	   
    	   if (i >= 0 && i < str.length) {
    	    pwd.append(str[i]);
    	    count ++;
    	   }
    	  }
    	  
    	  return pwd.toString();
    	 }
    	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
		String emailServer = "smtp.qq.com"; 
		 String userName = "2272760120@qq.com";  
		 String emailpassword = "wanweiwang";  
	String emailEncoding = "UTF-8";  //Email编码
	
	String  webaccString=null;
	String  webpass=null;
		 /**
		   * 测试发送不包含附件的简单纯文本邮件
		   * @throws EmailException
		   */
	
	 String            driverclass = /* getServletConfig(). */getServletContext().getInitParameter("driver");
     String   username = /* getServletConfig(). */getServletContext().getInitParameter("username");
     String   password = /* getServletConfig(). */getServletContext().getInitParameter("password");
    String    url = /* getServletConfig(). */getServletContext().getInitParameter("url");
                                        
                HttpSession session=request.getSession();      
	    	Class.forName(driverclass).newInstance(); 
	    	Connection  con=DriverManager.getConnection(url,username,password); 
	    	Statement stmt=con.createStatement();
	    		//String ss="select *  from ndbc_user where  acc='"+u+"' and pass='"+p+"'";
	    			 
	    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
	    	String  newpassString=genRandomNum(6);
	    	String acc=	request.getParameter("username");  
	    		 		//java.sql.PreparedStatement pstmt=con.prepareStatement("select pass from ndbc_user  where acc=?");
	    	
	    	java.sql.PreparedStatement pstmt=con.prepareStatement("update ndbc_user set pass=? where acc=?");
	 		pstmt.setString(1, newpassString);
	 		pstmt.setString(2, acc);
//	 		pstmt.setString(3, tel);
//	 		pstmt.setString(4, linkman);
//	 		pstmt.setString(5, company);
//	 		pstmt.setString(6, acc);
	 		
	 pstmt.execute();
	    		 	
	    		 	
	    		 	
	    		 	//	pstmt.setString(1,acc );
	    		 		//pw.println("<h1>zhixingzhong  "+ss+"</h1>"); 
	    		 		 	//ResultSet	prs=pstmt.executeQuery();
	    		 //	rs.next();
	    		 	//prs.next();
	    		 	
	    		 	//webpass=;
	    		 	
	    		 	
	if(newpassString!=null)
	     
	{	 SimpleEmail email = new SimpleEmail();
		   email.setHostName(emailServer);     //服务器名
		   email.setAuthentication(userName, emailpassword);    //用户名，密码
		   email.setCharset(emailEncoding);    //邮件编码方式
		   
		   email.addTo(acc,"万维网知识提取竞赛"); //收信人
		   email.setFrom("2272760120@qq.com","万维网知识提取竞赛"); //发信人
		   email.setSubject("第一届搜狗-中国数据库学术年会智慧杯万维网知识提取竞赛--网站注册用户密码找回");  //标题
		   email.setMsg("您好，您的现邮箱密码为"+newpassString);  //正文

		   email.send();   
		   session.setAttribute("error", "您的密码已经发送到您的邮箱，请查收");
		   
		   response.sendRedirect("ErrorPage.jsp");
		   }//发送"}
	
	else {
		session.setAttribute("error", "您输入的邮箱不存在");
	
	response.sendRedirect("ErrorPage.jsp");
	}
		   
		}catch(Exception e)
		
		{
			 HttpSession session=request.getSession();
			session.setAttribute("error", "您输入的邮箱不存在");
		
		response.sendRedirect("ErrorPage.jsp");   }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
