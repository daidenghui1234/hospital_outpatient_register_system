<%@ page import="top.jkxljc.pojo.DeptBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getScheme()+"://"+request.getServerName()+":"+
            request.getServerPort()+request.getContextPath()+"/";
    pageContext.setAttribute("path", path);
    System.out.println(path);
%>
<!DOCTYPE html>
<html>
<head>
    <title>添加收费项目</title>
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
		$('#backid').click(function(){
				window.history.back(-1);
		 });
    });
    </script>
</head>
<body>
<form action="${path}dept/add" method="get" id="fom" class="definewidth m20" onsubmit="return checkIdNameExist()">
<input name="mark" value="addCharge" type="hidden">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">科室名称</td>
        <td><input type="text" id="deptName" name="deptName" value="" onblur="checkIdNameExist()"/>
            <font color="red" style="display: none" id="name_warn">**该科室已经存在**</font> </td>
          </tr>
    <tr>
        <td width="10%" class="tableleft">科室描述</td>
        <td><input type="text" name="deptDesc" id="deptDesc" value=""/></td>
    </tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;
                <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
</body>
    <script>
    var flag=false;
    function checkIdNameExist() {
     var names=$("#deptName").val();
         // console.log(projectName);
        // alert(ids);
    if (names==""|| names==null){
       $("#name_warn").html("科室名称不能为空").show();
     return  false;
    }
     $.get("${path}dept/isExistName?deptName="+names,function (data)
        {
        if (data){//已经存在

                // $("#deptName").val(data.deptName);
                // $("#deptName").attr({readonly:"true"});
           $("#name_warn").html("科室已经存在").show();

        }else{
            //不存在
            $("#name_warn").hide();
           flag=true;
        }
        });
    return flag;

    }
    </script>
</html>