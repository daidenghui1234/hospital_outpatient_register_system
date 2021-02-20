<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getScheme()+"://"+request.getServerName()+":"+
            request.getServerPort()+request.getContextPath()+"/";
    pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=this.getServletContext().getContextPath() %>/admin/">
    <title>修改医生</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/ckform.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript" src="../js/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>


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
                window.location.href="${path}dept/showAll";
            });
       });

    </script>
</head>
<body>
<form action="${path}dept/update" method="post" class="definewidth m20">
    <input type="hidden" name="method" value="updateDoctor"/>
    <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">科室编号</td>
            <td><input type="text" name="deptId" value="${deptObject.deptId}" readonly unselectable="on" oncopy="return false" onpaste="return false"/></td>
        </tr>
        <tr>
            <td width="10%" class="tableleft">科室名称</td>
            <td><input type="text" name="deptName" value="${deptObject.deptName}"/></td>
        </tr>
        <tr>
            <td width="10%" class="tableleft">科室描述</td>
            <td><input type="text" name="deptDesc" value="${deptObject.deptDesc}"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <input name="save" id="save" type="submit" class="btn btn-primary" value="保存"/> &nbsp;&nbsp;
                    <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
                </center>
            </td>
        </tr>
    </table>
</form>
</body>
</html>