<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
	<style type="text/css">
		body {
		background-image: url(image/001.jpg);
		background-size:cover; 
		}
		label{
            display: inline-block;
            min-width: 80px;/*或者 width: 100px;*/
        }
	</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"5956",secure:"5965"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-4" data-genuitec-path="/ThreeTierStudent/WebRoot/login.jsp">
	<div data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-4" data-genuitec-path="/ThreeTierStudent/WebRoot/login.jsp">
		<br/><br/><br/><br/><br/><br/>
	</div>
	<div style="width:100%;text-align:center">
		<form action="LoginServlet" method="post">
    		<label for="inputs">用户名：</label><input type ="text" name="uname" ><br/>
    	   	<label for="inputs">密码：</label><input type ="password" name="upwd" ><br/>
    	   		  <input type ="submit" value="登录">
   	    </form>
   	</div>
</body>
</html>