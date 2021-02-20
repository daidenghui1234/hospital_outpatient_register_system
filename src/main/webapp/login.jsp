<%--
  Created by IntelliJ IDEA.
  User: MediaLiu
  Date: 2021/1/5
  Time: 0:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录界面</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <style type="text/css">
        #message{
            font-size: 14px;
            color:red;
            margin-left: 40px;
        }
    </style>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="" method="post" id="fim">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>医院挂号系统</h1></div>
                    <span id="message" class="message"></span><br>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="username" placeholder="登录账号" data-validate="required:请填写账号" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="pwd" placeholder="登录密码" data-validate="required:请填写密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            &nbsp;&nbsp;	<label> <input type="radio" checked="checked" name="type" value="0">
                            管理员
                        </label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <label> <input type="radio" name="type" value="1">
                                医生
                            </label> &nbsp;&nbsp;&nbsp;&nbsp;
                            <label> <input type="radio" name="type" value="2">
                                患者
                            </label>
                        </div>
                    </div>
                    <div style="padding:30px;">
                        <input type="button" onclick="userLogin();" id="login_btn" class="button button-block bg-main text-big input-big" value="登录"/>
                        <a href="regist.jsp">患者注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function userLogin() {
        $.post("account/login",$("#fim").serialize(),function (data) {
                if(data) {//验证成功
                    if (data.accountStatus == 0) {
                        if (data.accountType == 0) {
                            location.href = "admin/department_index.jsp";
                        } else if (data.accountType == 1) {
                            location.href = "doctor/doctor_index.jsp";
                        } else if (data.accountType == 2) {
                            location.href = "patient/patient_index.jsp";
                        }
                    } else {
                            $("#message").html("该账户已冻结，请联系管理员");
                        }
                }else {
                        $("#message").html("用户名或者密码错误")
                    }

            })
    }
</script>
</html>
