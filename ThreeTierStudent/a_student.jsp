<%@page import="org.entity.Student_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>一个学生的信息</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"5956",secure:"5965"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-0" data-genuitec-path="/ThreeTierStudent/WebRoot/a_student.jsp">
	<%
		Student_Info student =(Student_Info)request.getAttribute("student");
	%>
	<!-- 通过表单显示个人信息 -->
	<form action="UpdateStudent_infoServlet" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-0" data-genuitec-path="/ThreeTierStudent/WebRoot/a_student.jsp">
		学号：<input type="text" name="stu_id" value="<%=student.getStu_id()%>" readonly="readonly"><br/>    
		姓名：<input type="text" name="name" value="<%=student.getName()%>"><br/>
		性 别：<input type="text" name="gender" value="<%=student.getSex() %>" ><br/>
		出生年月日：<input type="text" name="birth" value="<%=student.getBirth()%>"><br/>
		<input type="submit" value="修改">
		<a href="QueryAllStudentServlet">返回</a>
	</form>
</body>
</html>