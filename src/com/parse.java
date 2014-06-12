package com;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;


public class parse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		<context-param>
//	    <param-name>driver</param-name>
//	    <param-value>oracle.jdbc.driver.OracleDriver</param-value>
//	  </context-param>
//	  <context-param>
//	    <param-name>url</param-name>
//	    <param-value>jdbc:oracle:thin:@202.112.117.91:1521:testdb</param-value>
//	  </context-param>
		
		 String            driverclass ="oracle.jdbc.driver.OracleDriver"; 
	     String   username ="scott"; 
	     String   password = "tiger";
	    String    url ="jdbc:oracle:thin:@202.112.117.91:1521:testdb";
	                  try{                      
	               	Class.forName(driverclass).newInstance(); 
		    	Connection  con=DriverManager.getConnection(url,username,password); 
		    	Statement stmt=con.createStatement();
		    			 
		    	
		    	java.sql.PreparedStatement pstmt=con.prepareStatement("select * from ndbc_user ");
		 	
		 		
		               ResultSet r=pstmt.executeQuery();
		               HashMap<String, ndbcuser> usersHashMap=new HashMap<String, ndbcuser>();
		               
		               
		               while(r.next())
		               {
		            	   
		            	   ndbcuser u=new ndbcuser();
		            	  
		            	   
		            	 if(r.getString("acc")!=null)  u.acc=r.getString("acc");
		            	 else u.acc=" ";
		            	 if(r.getString("company")!=null)  u.company=r.getString("company");
		            	 else u.company=" ";
		            	 if(r.getString("linkman")!=null)   u.linkman=r.getString("linkman");
		            	 else u.linkman=" ";
		            	 if(r.getString("pass")!=null)  u.pass=r.getString("pass");
		            	 else u.pass=" ";
		            	 if(r.getString("team")!=null)   u.team=r.getString("team");
		            	 else u.team=" ";
		            	 if(r.getString("teamname")!=null)  u.teamname=r.getString("teamname");
		            	 else u.teamname=" ";
		            	 if(r.getString("tel")!=null)  u.tel=r.getString("tel");
		            	   if(usersHashMap.containsKey(u.linkman))
		            	   {
		            		if(!u.acc.equals(usersHashMap.get(u.linkman).acc))   usersHashMap.get(u.linkman).acc+="  ,或者,  "+u.acc;
		            		if(!u.company.equals(usersHashMap.get(u.linkman).company))   usersHashMap.get(u.linkman).company+="  ,或者,  "+u.company;
		            		//if(!u.linkman.endsWith(usersHashMap.get(u.linkman).acc))   usersHashMap.get(u.linkman).linkman+="  ,,  "+u.linkman;
		            		if(!u.pass.equals(usersHashMap.get(u.linkman).pass))   usersHashMap.get(u.linkman).pass+="  ,或者,  "+u.pass;
		            		if(!u.team.equals(usersHashMap.get(u.linkman).team))   usersHashMap.get(u.linkman).team+="  ,或者,  "+u.team;
		            		if(!u.teamname.equals(usersHashMap.get(u.linkman).teamname))   usersHashMap.get(u.linkman).teamname+="  ,或者,  "+u.teamname;
		            		if(!u.tel.equals(usersHashMap.get(u.linkman).tel))   usersHashMap.get(u.linkman).tel+="  ,或者,  "+u.tel;
		            		   
		            	
		            		   
		            	   }
		            	   else usersHashMap.put(u.linkman, u);
		            	   
		            	   
		            	   
		            	   
		            	   
		            	   
		               }
		               System.out.print("数目"+(usersHashMap.size()-1));
		               FileWriter fw=new FileWriter("C:\\Users\\gaoyanjie\\Desktop\\ndbc记事本.txt"); 
		       			PrintWriter pw=new PrintWriter(fw);
		       	//		pw.println("本次比赛总人数为"+usersHashMap.size()+"   去重方式为将相同联系人名的队伍合并成为一组，用,或者,隔开");
		       	//		pw.println();
		               
		               for(String key:usersHashMap.keySet())
		               {
		            	   String s=""+usersHashMap.get(key).acc+";"+usersHashMap.get(key).pass+";"+usersHashMap.get(key).linkman+";"+""+usersHashMap.get(key).teamname+" ; "+""+usersHashMap.get(key).team+" ;"+""+usersHashMap.get(key).company+"  ;"+""+usersHashMap.get(key).tel+";";
		            	 
		       			if(!key.equals("管理员")){pw.println(s); //把内容写进文件	}
		       			
		       		//	pw.println();
		       			}
		            	   
		            	   s=null;
		               }
		               
	                  pw.close();
	                  fw.close();
	                   
	                  
	                  }
	                  catch(Exception e)
	                  {e.printStackTrace();}
		    		 	
		    		 	
		    		 	
		    		 
	}

}
