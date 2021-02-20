<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=this.getServletContext().getContextPath() %>/doctor/">
    <title>患者就诊管理</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/ckform.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>

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
            $("#showAndHide").click(function(){
                document.getElementById("showAndHide").hidden
            });
        });
    </script>
</head>
<body>

<form action="index.html" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">病例号：</td>
        <td><input type="text" name="pname" value=""/></td>
		
        <td width="10%" class="tableleft">患者姓名：</td>
        <td><input type="text" name="pname" value=""/></td>

        <td width="10%" class="tableleft">处理状态</td>

        <td>
            <select name="department">
                <option value="0">全部</option>
                <option value="1">待处理</option>
                <option value="2">处理完成</option>
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
   
<table class="table table-bordered table-hover definewidth m10" >
   <thead>
    <tr>
        <th>病历号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>联系电话</th>
        <th>家庭住址</th>
        <th>挂号时间</th>
        <th>科室</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    </thead>
    	<c:forEach items="${AdminRegister}" var="reg">
	     <tr >
<%--         	<td style="vertical-align:middle;"><input type="checkbox" name="check" value="1"></td>--%>
            <td style="vertical-align:middle;">${reg.registerId}</td>
            <td style="vertical-align:middle;">${reg.patientName}</td>
            <td style="vertical-align:middle;">${reg.patientGender==0?"男":"女"}</td>
            <td style="vertical-align:middle;">${reg.patientAge}</td>
            <td style="vertical-align:middle;">${reg.patientTel}</td>
            <td style="vertical-align:middle;">${reg.patientAddress}</td>
            <td style="vertical-align:middle;">${reg.registerTime}</td>
            <td style="vertical-align:middle;">${reg.deptName}</td>
            <td style="vertical-align:middle;">${reg.registerStatus==0?"处理完成":"未处理"}</td>
            <td style="vertical-align:middle;" ><a name="showAndHide" id="showAndHide" href="${path}/Register/DeleteRegister?id=${reg.registerId}">删除</a></td>
			</td>
         </tr>
	     </c:forEach>
  </table>
  
  <table class="table table-bordered table-hover definewidth m10" >
  	<tr><th colspan="5">  
  		 <div class="inline pull-right page">
<%--	          <a href="#" >首页</a>--%>
<%--	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.pre_page }">上一页</a>     --%>
<%--	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.next_page }" >下一页</a> --%>
<%--	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.count_pages }" >尾页</a>--%>
<%--			  &nbsp;&nbsp;&nbsp;--%>
<%--			     共<span class='current'>${pageUtils.count_rows }</span>条记录<span class='current'> ${pageUtils.current_page }/${pageUtils.count_pages } </span>页--%>
		  </div>
		  
		 <div>&nbsp;&nbsp;
		 </div>
		 
		 </th></tr>
  </table>
  
</body>
</html>
