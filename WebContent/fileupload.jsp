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
<title>�ļ���������</title>
</head>

<body>

 <!--   <FORM NAME="fileupload" ACTION="fileupload.jsp" method="POST" ENCTYPE="multipart/form-data">
<!--����ָ�����ļ�������Ϊ multipart/form-data -->

<P>�ļ���<INPUT TYPE=FILE NAME="file" SIZE=12></P>
<P><INPUT TYPE=SUBMIT NAME="submit" VALUE="ȷ��"></P>
</FORM>-->
<%
boolean isMultipart = ServletFileUpload.isMultipartContent(request);//�������Ƿ�����ļ�
if(isMultipart){
   FileItemFactory factory = new DiskFileItemFactory();
   //factory.setSizeThreshold(yourMaxMemorySize); �˴�������ʹ�õ��ڴ����ֵ
   //factory.setRepository(yourTempDirectory); �ļ���ʱĿ¼

   ServletFileUpload upload = new ServletFileUpload(factory);
   //upload.setSizeMax(yourMaxRequestSize);���������ļ��ߴ�

   List items = upload.parseRequest(request);
   for(int i=0;i<items.size();i++){
   FileItem fi = (FileItem)items.get(i);
   if(fi.isFormField()){//����Ǳ��ֶ�
%>
<%=fi.getFieldName()%>:<%=fi.getString("GB2312")%><BR>
<%
   }else{//������ļ�
   DiskFileItem dfi = (DiskFileItem)fi;
   if(!dfi.getName().trim().equals("")){//getName()�����ļ����ƣ�����ǿ��ַ�����˵��û��ѡ���ļ���
%>
�ļ����ϴ��������ϵ�ʵ��λ�ã�<%="nn"//new File(application.getRealPath("/")+System.getProperty("file.separator")+
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