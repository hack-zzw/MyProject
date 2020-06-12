<%@page import="org.entity.Student_Info"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("tr:odd").css("background-color","lightgray");
		});
	</script>
	<style type="text/css">
		body {
		background-image: url(image/015.jpg);
		background-size:cover; 
		}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>学生信息列表</title>
	
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"5956",secure:"5965"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-7" data-genuitec-path="/ThreeTierStudent/WebRoot/student_infos.jsp">
	<%
		//error:adderror失败
		//否则:1确实执行了增加2直接访问查询全部页面
		String error = (String)request.getAttribute("error");//addError
		if( error!=null){
			if( error.equals("addError")){
			out.print("增加失败! ");
			}else if(error.equals("noaddError")){
			out.print("增加成功! ");
			}
		}
	%>
	<%
		String errors = (String)request.getAttribute("errors");//addError
		if( errors!=null){
			if( errors.equals("addError")){
			out.print("删除失败! ");
			}else if(errors.equals("noaddError")){
			out.print("删除成功! ");
			}
		}
	%>
	<%
		String errorss = (String)request.getAttribute("errorss");//addError
		if( errorss!=null){
			if( errorss.equals("addError")){
			out.print("修改失败! ");
			}else if(errorss.equals("noaddError")){
			out.print("修改成功! ");
			}
		}
	%>
	<table border="1px" width="500" height="100%" align="center" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-7" data-genuitec-path="/ThreeTierStudent/WebRoot/student_infos.jsp">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生年月日</th>
			<th>操作</th>
		</tr>
		  <%
			List<Student_Info> students =(List<Student_Info>)request.getAttribute("students");
			for(Student_Info student:students){
		%>
				<tr>
					<td><a href="QueryStudentByidServlet?stu_id=<%=student.getStu_id()%>"><%=student.getStu_id()%></a></td>
					<td><%=student.getName() %></td>
					<td><%=student.getSex() %></td>
					<td><%=student.getBirth()%></td>
					<td><a href="DeleteStudentServlet?stu_id=<%=student.getStu_id()%>">删除</a></td>
				</tr>
		<%
			}
		 %>
	</table>
	<div style="width:100%;text-align:center">
		<a href="addStudent.jsp">添加</a>
		<a href="welcome.jsp">返回</a>
	</div>
</body>
</html>