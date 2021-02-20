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
	<link rel="icon" href="images/logo_favicon.ico" type="image/x-icon" />
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.sorted.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/messages_zh.js"></script>
    <style type="text/css">
        body {
            padding-top: 140px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
            font-family: "微软雅黑";
            background-color: buttonhighlight;
        }

        .form-signin {
            max-width: 520px;
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
            margin-top: 0px;
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
		
    </style>
    <script type="text/javascript">
        $("font").hide();
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
                window.history.back(-1);
            });
        });

    </script>
</head>
<body>
<div class="container">	
    <form class="form-signin" id="fim">
    	<input type="hidden" name="method" value="regist">
        <h2 class="form-signin-heading" >患者注册</h2>
                        账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
		<input type="text" name="accountName" id="accountName" class="input-block-level" placeholder="账号">
        <font color="red" id="name_warn">用户名不能为空</font>
		<br/>
                        密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
        <input id="accountPassword1" type="password" name="accountPassword1" class="input-block-level" placeholder="密码">
        <font color="red" id="password_warn">密码不能为空</font>
        <br/>
                       确认密码：<input type="password" id="accountPassword2" name="accountPassword2" class="input-block-level" placeholder="确认密码">
        <font color="red" id="password2_warn">确认密码不能为空</font>
        <br/>
                        用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input type="text" id="patientName" name="patientName" class="input-block-level" placeholder="用户名">
        <font color="red" id="username_warn">用户名不能为空</font><br/>

                        邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" id="email" name="email" class="input-block-level" placeholder="邮箱">
        <font color="red" id="email_warn">邮箱不能为空</font>
        <br/>
                        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="radio" style="margin-left: 47px;margin-bottom: 20px" name="patientGender" id="patientGender" value="0" checked/>男&nbsp;&nbsp;&nbsp;
                                        <input type="radio" style="margin-left: 20px;margin-bottom: 20px" name="patientGender" id="" value="1"/>女
        <br/>
                        年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" id="patientAge" name="patientAge" class="input-block-level" placeholder="年龄">
        <font color="red" id="dddd">邮箱不能为空</font>
        <br/>
        联系方式：<input type="text" id="patientTel" name="patientTel" class="input-block-level" placeholder="联系方式">
        <font color="red" id="d">联系方式不能为空</font>
        <br/>
        地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input type="text" id="patientAddress" name="patientAddress" class="input-block-level" placeholder="地址">
        <font color="red" id="f">地址不能为空</font>
        <br/>
        <input type="button"  name="save" id="save" value="注册"  class="btn btn-large btn-info" style="width: 100px;"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="reset" type="reset" value="清空"  class="btn btn-large btn-info" style="width: 100px;"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-large btn-info" style="width: 100px;" name="backid" id="backid">退出</button>
        </p>
    </form>
</div>

<%--<script type="text/javascript">--%>
<%--    //首先将所有的font提示语全部隐藏--%>
<%--    $("font").hide();--%>
<%--    //检查输入框有没有空值--%>
<%--	function  checkInput() {--%>
<%--        var flag=true;--%>
<%--        //每次校验之前先初始化确认密码的提示--%>
<%--        $("#password2_warn").html("确认密码不能空");--%>
<%--	    //找到所有的input标签，遍历--%>
<%--        $("input").each(function () {--%>
<%--            var val=$(this).val();//遍历到的元素--%>
<%--            if (val==""){--%>
<%--                // $("#password_warn").show()--%>
<%--               $("#"+ $(this).prop("name")+"_warn").show();--%>
<%--               flag=false;--%>
<%--            }else{--%>
<%--                $("#"+ $(this).prop("name")+"_warn").hide();--%>
<%--            }--%>
<%--        });--%>
<%--        var p1=$("#password").val();--%>
<%--        var p2=$("#password2").val();--%>
<%--        if (p1!=p2){--%>
<%--            flag =false;--%>
<%--            $("#password2_warn").show();--%>
<%--            $("#password2_warn").html("两次输入的密码不同")--%>
<%--        }--%>


<%--        return flag;--%>
<%--    }--%>
<%--    //注册--%>
<%--    function regist_user() {--%>
<%--        if (checkInput()){//数据校验--%>
<%--           $.post("user/regist",$("#fim").serialize(),function (data) {--%>
<%--               if (data){--%>
<%--                    location.href="login.jsp";--%>
<%--               }else{--%>
<%--                   alert("添加失败")--%>
<%--               }--%>
<%--           })--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>