<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	String path=request.getScheme()+"://"+request.getServerName()+":"+
	request.getServerPort()+request.getContextPath()+"/";
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			*{
				margin: 0;
				padding: 0;
			}
			#left{
				width: 200px;
				height: 768px;
				background-color: #eaeaea;
				padding-left: 10px;
			}
			#left ul{
				padding-top: 10px;
				padding-left: 20px;
			}
			
			#left ul li{
				list-style: none;
				line-height: 25px;
			}
			
			#left ul li a{
				text-decoration: none;
				font-size: 14px;
				
			}
		</style>
	</head>
	<body>
		<div id="left">
			<h3>业务办理</h3>
			<ul>
				<li><a href="${path}findAll_Dept" target="rightFrame">门诊挂号管理</a></li>
			</ul>
		</div>
	</body>
</html>
