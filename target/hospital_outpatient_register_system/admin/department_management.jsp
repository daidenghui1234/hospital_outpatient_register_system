
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path=request.getScheme()+"://"+request.getServerName()+":"+
	request.getServerPort()+request.getContextPath()+"/";
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=this.getServletContext().getContextPath() %>/admin/">
    <title>门诊科室</title>
    <meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/ckform.js"></script>
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/ckeditor/ckeditor.js"></script>
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $('#newNav').click(function(){
                window.location.href="dept_add.jsp";
            });
        });
    </script>
</head>
<body>
<form action="${path}dept/showAll" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
	<tr>
<%--	  <td width="10%" class="tableleft">科室：</td>--%>
<%--	  <td><input type="text" id="name" name="name" value=""/></td>--%>
	  <td width="10%" class="tableleft">科室名称</td>
	  <td>
	    <select name="department" id="department">
			<option value="0" >==请选择==</option>
			<c:forEach items="${list}" var="li">
				<option value="${li.deptId}">${li.deptName}</option>
			</c:forEach>
        </select>
	  </td>
	</tr>
	<tr>
	  <td colspan="6">
	    <center>
			<input id="find" name="find" type="submit" class="btn btn-primary" value="查询"/>
			<input id="ret" name="ret" type="button" class="btn btn-primary" value="清空"/>
		</center>
	  </td>
	 </tr>
</table>
</form>
<table class="table table-bordered table-hover definewidth m10" id="fom" >
   <thead>
    <tr>
<%--    	<th><input type="checkbox" id="checkall" onChange="checkall();"></th>--%>
        <th>科室编号</th>
        <th>科室名称</th>
	     <th>描述</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
	<c:forEach items="${list}" var="a">
		<tr>
<%--			<td><input type="checkbox" class="checkOne" value="${a.deptId}"></td>--%>
			<td>${a.deptId}</td>
			<td>${a.deptName}</td>
	        <td>${a.deptDesc}</td>
			<td>

<%--				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">修改</button>--%>
<%--				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">--%>
<%--					<div class="modal-dialog" role="document">--%>
<%--						<div class="modal-content">--%>
<%--							<div class="modal-header">--%>
<%--								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--								<h4 class="modal-title" id="exampleModalLabel">修改</h4>--%>
<%--							</div>--%>
<%--							<div class="modal-body">--%>
<%--								<form>--%>
<%--									<div class="form-group">--%>
<%--										<label for="recipient-name" class="control-label">科室ID:</label>--%>
<%--										<input type="text" name="deptId"  readonly="readonly" class="form-control" id="recipient-name" value="${a.deptId}">--%>
<%--									</div>--%>
<%--									<div class="form-group">--%>
<%--										<label for="recipient-names" class="control-label">科室名称:</label>--%>
<%--										<input type="text" class="form-control" id="recipient-names" value="${a.deptName}">--%>
<%--										<!--                        <label for="message-text" class="control-label">Message:</label>-->--%>
<%--										<!--                        <textarea class="form-control" id="message-text"></textarea>-->--%>
<%--									</div>--%>
<%--								</form>--%>
<%--							</div>--%>
<%--							<div class="modal-footer">--%>
<%--								<button type="button" id="save" class="btn btn-default" data-dismiss="modal">保存</button>--%>
<%--								<button type="button" class="btn btn-primary">返回列表</button>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--&lt;%&ndash;				</div>&ndash;%&gt;--%>
<%--                <a>删除</a>--%>
				<a href="${path}dept/findOne?deptId=${a.deptId}">修改</a>
				<a href="${path}dept/del?deptId=${a.deptId}" id="del">删除</a>
			</td>
		</tr>
	</c:forEach>
	 </tbody>
  </table>
<%--  --%>
<%--  <table class="table table-bordered table-hover definewidth m10" >--%>
<%--  	<tr>--%>
<%--  		<th colspan="5">  <div class="inline pull-right page">--%>
<%--          <a href='' >首页</a> --%>
<%--          --%>
<%--          <a href=''>上一页</a>--%>
<%--          --%>
<%--          <a href=''>下一页</a> --%>
<%--          --%>
<%--          <a href=''>尾页</a>--%>
<%--          --%>
<%--		  &nbsp;&nbsp;&nbsp;共<span class='current'>  </span>条记录--%>
<%--		  <span class='current'>  </span>页--%>
<%--		  --%>
<%--		  </div>--%>
		 <div>
		 <button type="button" class="btn btn-success" id="newNav">添加科室</button>
		 </div>
<%--		 </th>--%>
<%--	</tr>--%>
<%--  </table>  --%>
</body>
</html>
