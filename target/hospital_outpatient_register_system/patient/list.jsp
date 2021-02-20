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
    <base href="<%=this.getServletContext().getContextPath() %>/register/">
    <title>挂号信息</title>
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
<form action="${path}register/list" method="post" class="definewidth m20">
<%--    <input type="hidden" name="did" value="${registera.}"/>--%>
    <input type="hidden" name="method" value="updateDoctor"/>
    <div style="margin-left:25px">
    <h3>
        挂号信息单
    </h3></div>
    <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">姓名</td>
<%--            <td><input type="text" name="name" value="${registera.patientName}" readonly unselectable="on" oncopy="return false" onpaste="return false"/></td>--%>
       <td>${registera.patientName}</td>
        </tr>
        <tr>
            <td width="10%" class="tableleft">性别</td>
            <td>
                <input type="radio" name="sex"  disabled value="0" ${registera.patientGender==0?"checked":""}/>男&nbsp;&nbsp;&nbsp;
                <input type="radio" name="sex" disabled  value="1" ${registera.patientGender==1?"checked":""}/>女
            </td>
        </tr>
        <td width="10%" class="tableleft">年龄</td>
<%--        <td><input id=qw" type="text" name="age" value="${registera.patientAge}" onfocus="ages()" /></td>--%>
            <td>${registera.patientAge}</td>
        </tr>
        <tr>
            <td width="10%" class="tableleft">联系电话</td>
              <td>${registera.patientTel}</td>
<%--           <td><input type="text" name="phone" value="${registera.patientTel}"/></td>--%>
        </tr>
        <tr>
            <td width="10%" class="tableleft">挂号时间</td>
            <td>${registera.registerTime}</td>
<%--            <td><input type="text" name="cardNo" value="${registera.registerTime}" readonly="readonly" oncopy="return false" onpaste="return false"/></td>--%>
        </tr>
        <tr>
            <td width="10%" class="tableleft">所选科室</td>
            <td>${registera.deptName}</td>
<%--            <td><input type="text" name="cardNo" value="${registera.deptName}" readonly="readonly" oncopy="return false" onpaste="return false"/></td>--%>
        </tr>
        <%--        <tr>--%>
        <tr>
            <td width="10%" class="tableleft">所选职称</td>
<%--            <td><input type="text" name="cardNo" value="${registera.postName}" readonly="readonly" oncopy="return false" onpaste="return false"/></td>--%>
            <td>${registera.postName}</td>
        </tr>
        <tr>
            <td width="10%" class="tableleft">分配医生</td>
            <td>${registera.doctorName}</td>
<%--            <td><input type="text" name="doctorname" value="${registera.doctorName}" readonly="readonly" oncopy="return false" onpaste="return false"/></td>--%>
        </tr>
        <tr>
            <td width="10%" class="tableleft">备注</td>
            <td>已为您随机分配就诊医生，请按挂号时间按时就诊，谢谢！</td>
<%--            <td><textarea name="remark">已为您随机分配就诊医生，请按挂号时间按时就诊，谢谢！</textarea></td>--%>
        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <button type="button" class="btn btn-success" name="backid" id="backid">返回</button>
                </center>
            </td>
        </tr>
    </table>
</form>
</body>
</html>