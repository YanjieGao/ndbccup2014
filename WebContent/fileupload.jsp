<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>文件传输例子</title>
</head>

<body>

 <!--   <FORM NAME="fileupload" ACTION="fileupload.jsp" method="POST" ENCTYPE="multipart/form-data">
<!--必须指定表单的加密类型为 multipart/form-data -->

<P>文件：<INPUT TYPE=FILE NAME="file" SIZE=12></P>
<P><INPUT TYPE=SUBMIT NAME="submit" VALUE="确定"></P>
</FORM>-->
<%
boolean isMultipart = ServletFileUpload.isMultipartContent(request);//检查表单中是否包含文件
if(isMultipart){
   FileItemFactory factory = new DiskFileItemFactory();
   //factory.setSizeThreshold(yourMaxMemorySize); 此处可设置使用的内存最大值
   //factory.setRepository(yourTempDirectory); 文件临时目录

   ServletFileUpload upload = new ServletFileUpload(factory);
   //upload.setSizeMax(yourMaxRequestSize);允许的最大文件尺寸

   List items = upload.parseRequest(request);
   for(int i=0;i<items.size();i++){
   FileItem fi = (FileItem)items.get(i);
   if(fi.isFormField()){//如果是表单字段
%>
<%=fi.getFieldName()%>:<%=fi.getString("GB2312")%><BR>
<%
   }else{//如果是文件
   DiskFileItem dfi = (DiskFileItem)fi;
   if(!dfi.getName().trim().equals("")){//getName()返回文件名称，如果是空字符串，说明没有选择文件。
%>
文件被上传到服务上的实际位置：<%="nn"//new File(application.getRealPath("/")+System.getProperty("file.separator")+
//new File("d:/"+System.getProperty("file.separator")+

//new File("E:/oracle/Middleware/user_projects/domains/dbiir/autodeploy/ndbcfile/"+System.getProperty("file.separator")+

//FilenameUtils.getName(dfi.getName())).getAbsolutePath()

%><br>
<%
 //  dfi.write(new File(application.getRealPath("/")+System.getProperty("file.separator")+ 
		 dfi.write(new File("E:/oracle/Middleware/user_projects/domains/dbiir/autodeploy/ndbcfile/"+
				 session.getAttribute("acc").toString()+"--"+
				  FilenameUtils.getName(dfi.getName())));
   }
   }
   }
}

%>
</body>
</html>