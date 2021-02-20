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
    <base href="<%=this.getServletContext().getContextPath() %>/register/">
    <title>挂号</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/ckform.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript" src="../js/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
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
            $('#save').click(function(){
                var post_id = document.getElementById("post_id").value;
                var dept_id = document.getElementById("dept_id").value;

                window.location.href = "${path}findAll_Doctors?patientId=${account.accountNum}"
                +"&postId=" + post_id
                + "&deptId=" + dept_id;
                alert("挂号成功");
            });

        });
    </script>
</head>
<body>
<form action="" method="post" class="definewidth m20">
    <input name="method" value="insertRegister" type="hidden">
    <table class="table table-bordered table-hover definewidth m10">

        <tr>
            <td width="10%" class="tableleft">挂号类别</td>
            <td>
                <select name="post_id" id="post_id">
                    <option value="1">医师</option>
                    <option value="2">主治医师</option>
                    <option value="3">副主任医师</option>
                    <option value="4">主任医师</option>
                </select>
        </tr>

        <tr>
            <td width="10%" class="tableleft">所挂科室</td>

            <td>
                    <select name="dept_id" id="dept_id">
                        <c:forEach items="${deptList}" var="dept">
                        <option value="${dept.deptId}">${dept.deptName}</option>
                        </c:forEach>
                    </select>
            </td>

        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <button type="button" class="btn btn-primary" name="save" id="save"type="button">确认挂号</button> &nbsp;&nbsp;
                    <button type="button" class="btn btn-success" name="backid" id="backid">取消</button>
                </center>
            </td>
        </tr>
    </table>
</form>
</body>
</html>