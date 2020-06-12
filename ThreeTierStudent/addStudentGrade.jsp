<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生成绩</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		function check(){
			var stu_id = $("#stu_id").val();
			var name = $("#name").val();
			var birth = $("#birth").val();
			if(!(stu_id>0 && stu_id<101)){
				alert("学号有误，必须为1-100");
				return false;
			}
			if(!(name.length>1 && name.length<5)){
				alert("姓名有误，必须为2-4位");
				return false;
			}
			//if(){
			//	return false;
			//}
			
		}
		
		
		$(document).ready(function(){
		});
	</script>
	<style type="text/css">
		body {
		background-image: url(image/014.jpg);
		background-size:cover; 
		}
		label{
            display: inline-block;
            min-width: 100px;/*或者 width: 100px;*/
        }
	</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"5956",secure:"5965"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-3" data-genuitec-path="/ThreeTierStudent/WebRoot/addStudentGrade.jsp">
	<div style="width:100%;text-align:center" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-3" data-genuitec-path="/ThreeTierStudent/WebRoot/addStudentGrade.jsp">
		<h4>添加学生成绩功能：姓名、学号、数学成绩、java成绩、英语成绩、体育成绩</h4>
		<form action="AddStudentGradeServlet" method="post" onsubmit="return check()">
			<label for="inputs">学号：</label><input type="text" name="stu_id" id="stu_id"><br/>    
			<label for="inputs">姓名：</label><input type="text" name="name" id="name"><br/>
			<label for="inputs">数学成绩：</label><input type="text" name="math" id="math"><br/>
			<label for="inputs">java成绩：</label><input type="text" name="java" id="java"><br/>
			<label for="inputs">英语成绩：</label><input type="text" name="English" id="English"><br/>
			<label for="inputs">体育成绩：</label><input type="text" name="PE" id="PE"><br/>
			<input type="reset" value="重置">
			<input type ="submit" value="添加" >
		</form>
	</div>
</body>
</html>