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
    <title>门诊挂号系统</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/ckform.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../js/jquery.validate.js"></script>
    <script type="text/javascript" src="../js/messages_zh.js"></script>
    <style type="text/css">
        body {
            padding-top: 140px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
            font-family: "微软雅黑";
            background-color: buttonhighlight;
        }

        .form-signin {
            max-width: 600px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            background: rgba(255,255,255,0.5);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
            font-size: 24px;
            margin-left: 90px;
        }

        .form-signin .form-signin-heading{
            margin-bottom: 10px;
            font-size: 24px;
            margin-left: 200px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
        #message{
            font-size: 14px;
            color:red;
            margin-left: 40px;
        }
        .input-block-level{
            width: 300px;
            margin-left: 40px;
        }
        .input-medium{
            margin-left: 40px;
        }
        .code_images{
            width: 115px;
            height: 35px;
            margin-top: -15px;
            margin-left: 10px;
        }
        .error{
            color: red;
            font-size: 14px;
        }
        .registerForm{
            width:600px;
            height: 400px;
            position: absolute;
            left:50%;
            top:50%;
            margin-left:-300px;
            margin-top:-300px;
        }
        .registerFormTitle{
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $('#backid').click(function(){
                window.history.back(-1);
            });
            $('#save').click(function(){
                var accountName = document.getElementById("accountName").value;
                var accountPassword= document.getElementById("accountPassword1").value;
                var patientName = document.getElementById("patientName").value;
                var patientGender = document.getElementById("patientGender").value;
                var patientAge = document.getElementById("patientAge").value;
                var patientTel = document.getElementById("patientTel").value;
                var patientAddress = document.getElementById("patientAddress").value;
                window.location.href = "/AddUser/add?PatientName="+patientName
                    +"&PatientGender="+patientGender
                    +"&patientAge="+patientAge
                    +"&patientTel="+patientTel
                    +"&patientAddress="+patientAddress
                    +"&accountName="+accountName
                    +"&accountPassword="+accountPassword;
                alert("注册成功");
            });
        });

    </script>
</head>
<body>
<div class="container">
    <div class="registerForm">
        <%--表单--%>
        <form class="form-horizontal" id="fom">
            <div class="registerFormTitle" style="margin-left: 50px">
                <h3>患者注册</h3>
            </div>
            <div class="form-group">
                <label for="accountName" class="col-sm-2 control-label">账户</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="accountName" name="accountName" placeholder="账户">
                    <font color="red" id="name_warn">帐户名不能为空</font>
                </div>
            </div>
            <div class="form-group">
                <label for="accountPassword1" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="accountPassword1" id="accountPassword1" placeholder="密码">
                    <font color="red" id="password_warn">密码不能为空</font>
                </div>
            </div>
            <div class="form-group">
                <label for="accountPassword2" class="col-sm-2 control-label">确认密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="accountPassword2" id="accountPassword2" placeholder="确认密码">
                    <font color="red" id="password2_warn">确认密码不能为空</font>
                </div>
            </div>
            <div class="form-group">
                <label for="patientName" class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="patientName" id="patientName" placeholder="姓名">
                </div>
            </div>
            <div class="form-group">
                <label for="patientGender" class="col-sm-2 control-label">性别</label>
<%--                <div class="col-sm-10">--%>
                <input type="radio" style="margin-left: 20px" name="patientGender" id="patientGender" value="0" checked/>男&nbsp;&nbsp;&nbsp;
                <input type="radio" name="patientGender" id="patientGender" value="1"/>女
<%--                </div>--%>
            </div>
            <div class="form-group">
                <label for="patientAge" class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="patientAge" id="patientAge" placeholder="年龄">
                </div>
            </div>
            <div class="form-group">
                <label for="patientTel" class="col-sm-2 control-label">联系方式</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="patientTel" id="patientTel" placeholder="联系方式">
                </div>
            </div>
            <div class="form-group">
                <label for="patientAddress" class="col-sm-2 control-label">地址</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="patientAddress" id="patientAddress" placeholder="地址">
                </div>
            </div>
            <div class="form-group" align="center">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-primary" name="save" id="save"type="button">注册</button>
                    <button type="button" style="margin-left: 20px" class="btn btn-default" name="backid" id="backid">取消</button>
                </div>
            </div>
        </form>
    </div>

</div>

</body>
</html>