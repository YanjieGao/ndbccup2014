package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

import org.apache.commons.mail.SimpleEmail;

public class qunfaemail {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	
			String emailServer = "smtp.qq.com"; 
			 String userName = "2272760120@qq.com";  
			 String emailpassword = "wanweiwang";  
		String emailEncoding = "UTF-8";  //Email编码
		
	
		
		 String            driverclass = "oracle.jdbc.driver.OracleDriver";
     String   username = /* getServletConfig(). */"scott";
	     String   password = /* getServletConfig(). */"tiger";
	    String    url = /* getServletConfig(). */"jdbc:oracle:thin:@202.112.117.91:1521:testdb";
	                                        
	               // HttpSession session=request.getSession();      
		    	

		 		
		
		    		 	
		    		 	
		    		 	
		    		try{ 
		    			
		    			Class.forName(driverclass).newInstance(); 
				    	Connection  con=DriverManager.getConnection(url,username,password); 
				    	Statement stmt=con.createStatement();
				    		//String ss="select *  from ndbc_user where  acc='"+u+"' and pass='"+p+"'";
				    			 
				    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
				    //	String  newpassString=genRandomNum(6);
				    //	String acc=	request.getParameter("username");  
				    		 		//java.sql.PreparedStatement pstmt=con.prepareStatement("select pass from ndbc_user  where acc=?");
				    	
				    	java.sql.PreparedStatement pstmt=con.prepareStatement("select *  from ndbc_user  ");
				 //		pstmt.setString(1, newpassString);
				 //		pstmt.setString(2, acc);
		    			ResultSet  result= pstmt.executeQuery();
		    	while(result.next())	 	
		    		 	
		    	{
		     
			 SimpleEmail email = new SimpleEmail();
			   email.setHostName(emailServer);     //服务器名
			   email.setAuthentication(userName, emailpassword);    //用户名，密码
			   email.setCharset(emailEncoding);    //邮件编码方式
			   
			   email.addTo(result.getString("acc"),"万维网知识提取竞赛"); //收信人
			   email.setFrom("2272760120@qq.com","万维网知识提取竞赛"); //发信人
			   email.setSubject("第一届搜狗-中国数据库学术年会智慧杯万维网知识提取竞赛--通知消息");  //标题
			   email.setMsg("您好，提交结果的截止日期延长半个月，推迟至5月15日。具体信息可在官网进行查询。给您带来的麻烦请见谅，谢谢。");  //正文

			   email.send();  
			   
			   Thread.sleep(10000);
			   System.out.println(result.getString("acc")+"发送成功");
		
		    	}
		    		}catch(Exception e)
		    		{
		    			e.printStackTrace();
		    		}

		}

}
