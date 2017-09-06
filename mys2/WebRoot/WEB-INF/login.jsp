<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<s:form action="/login.action" method="post">
  		<s:fielderror cssStyle="disyplay:inline;padding:0;margin:0;list-style:none;">
  			<s:param>username</s:param>
  		</s:fielderror>
  		<s:text name="username"></s:text>
  		<s:textfield name="username"></s:textfield>
  		<br />
  		<s:fielderror cssStyle="disyplay:inline;padding:0;margin:0;list-style:none;">
  			<s:param>password</s:param>
  		</s:fielderror>
  		<s:text name="password"></s:text>
  		<s:password name="password"></s:password>
  		<br />
  		<s:submit value='%{getText("login")}'></s:submit>
  		<s:reset value='%{getText("reset")}'></s:reset>
  	</s:form>  
  	<s:actionmessage/>
  </body>
</html>
