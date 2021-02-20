<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>诊治</title>
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
		/* 隐藏部分 */
		.as{
			display: none;
		}
    </style>
    <script type="text/javascript">
    $(function () {
		$('#backid').click(function(){
            window.history.back(-1);
        });
        $('#save').click(function(){
            var record_sick = document.getElementById("record_sick").value;
            var recordSymptoms=document.getElementById("record_symptoms").value;
            var recordMedicine=document.getElementById("record_medicine").value;
            window.location.href = "${path}/Register/treatment?"
                +"doctorId=${account.accountNum}"
                +"&registerId=${registers.registerId}"
                + "&recordSick="+record_sick
                + "&recordSymptoms="+recordSymptoms
                + "&recordMedicine="+recordMedicine;
        });

		$("#showAndHide").click(function(){
			$(".as").fadeToggle(500);
		});
    });
    </script>
</head>
<body>
<form method="post" class="definewidth m20">
	
<input name="mark" value="saveHospitalization" type="hidden">
<input id="rno_new" name="rno" value="" type="hidden">

<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">病历号</td>
        <td>${registers.registerId}</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td id="patient_name">${registers.patientName}</td>
    </tr>
    <tr>
        <td width="10%" class="" colspan="2">
        	<a href="javascript:void(0)" id="showAndHide">显示全部信息</a>
        </td>
    </tr>
    <tr class="as">
        <td width="10%" class="tableleft">性别</td>
        <td id="patient_gender">${registers.patientGender==0?"男":"女"}</td>
    </tr>
    <tr class="as">
        <td width="10%" class="tableleft">年龄</td>
        <td id="patient_age">${registers.patientAge}</td>
    </tr>
    <tr class="as">
        <td width="10%" class="tableleft">联系电话</td>
        <td id="patient_tel">${registers.patientTel}</td>
    </tr>
    <tr class="as">
        <td width="10%" class="tableleft">家庭住址</td>
        <td id="patient_address">${registers.patientAddress}</td>
    </tr>
    <tr class="as">
        <td width="10%" class="tableleft">挂号类别</td>
        <td id="post_name">${registers.postName}</td>
    </tr>
</tr>
    <tr class="as">
        <td width="10%" class="tableleft">所挂科室</td>
        <td id="dept_name">${registers.deptName}</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">就诊报告</td>
        <td><textarea id="record_sick" name="record_sick"></textarea></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">患者症状</td>
        <td><textarea id="record_symptoms" name="record_symptoms"></textarea></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">处方</td>
        <td><textarea id="record_medicine" name="record_medicine"></textarea></td>
    </tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="button" class="btn btn-primary" name="save" id="save">保存</button> &nbsp;&nbsp;
                <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
</body>
</html>