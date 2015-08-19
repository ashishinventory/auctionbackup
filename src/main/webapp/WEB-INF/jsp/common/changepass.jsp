
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>MSL Auction - Change Password</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
<script type="text/javascript" src="${js_url}/tooltip.js"></script>
<style>
.MainLoginBox {
	width:324px;
	height:178px;
	float:left;
	-moz-border-radius:4px 4px 4px 4px;
	border:1px solid #4f81bc;
	position:absolute;
	top:30%;
	left:38%;
}
.LoginTitle {
	width:316px;
	height:28px;
	background:#4f81bc;
	color:#fff;
	padding-top:5px;
	font:bold 15px calibri;
	padding-left:10px;
	
}
.LoginInner {
	width:316px;
	height:130px;
	float:left;
	padding:10px;
	font:14px calibri;
	color:#4f81bc;
	-moz-border-radius:4px 4px 4px 4px;
}
.input {
	width:155px;
	height:20px;
	-moz-border-radius:4px 4px 4px 4px;
	color:#666666;
	border:1px solid #4f81bc;
	padding-left:5px;
	padding-right:5px;
}
.Footer {
width:100%;
height:30px;
text-align:center;
background:#d0d7e7;
   position:relative;
   margin-top:500px;
   bottom:0;
   clear:both;
}
.ui-state-default-active-btn { border: 1px solid #cccccc; background: #f6f6f6 url(${css_url}/images/ui-bg_glass_100_f6f6f6_1x400.png) 50% 50% repeat-x; font-weight: bold; color: #1c94c4;  text-decoration:none; font:bold 12px Arial, Helvetica, sans-serif ; -moz-border-radius:5px; padding:5px;  }
</style>
<link href="${css_url}/style.css" rel="stylesheet" media="screen">
</head>
<body>

<script>

function checkPassword()
{
	var Oldpass = document.getElementById("Oldpass").value;
	var Newpass = document.getElementById("Newpass").value;
	var Cnfpass = document.getElementById("Cnfpass").value;
    if(Oldpass=="" || Newpass=="" || Cnfpass=="" )
    	{
		alert("Fields Cannot Be Blank!!")
		return false;
    	}
 	else if(Newpass != Cnfpass)
 		{
		alert("Both New Password Should be Identical!!")
		return false;
	}
 	else if(Newpass.length < 4)
		{
		alert("New Password Should be atleast 4 charater long.!")
		return false;
	}
	else{
	//document.ChangePasswordForm.action = 'changepassword'; 
		document.ChangePasswordForm.submit();   
		//return true;
	}
 }
</script>
		


<sec:authorize ifAllGranted="ROLE_OBSERVER">
<%@ include file="/WEB-INF/jsp/observer/observer_top.jsp" %>
</sec:authorize>
<sec:authorize ifAllGranted="ROLE_BIDDER">
<%@ include file="/WEB-INF/jsp/bidder/bidder_top.jsp" %>
</sec:authorize>
<sec:authorize ifAllGranted="ROLE_ADMIN">
<%@ include file="/WEB-INF/jsp/admin/admin_top.jsp" %>
</sec:authorize>
<sec:authorize ifAllGranted="ROLE_SUPER_ADMIN">
<%@ include file="/WEB-INF/jsp/admin/superadmin_top.jsp" %>
</sec:authorize>
<div class="mian">	
		<div class="MainLoginBox"> 
		<div class="LoginTitle">Change Password </div>
		        <c:if test="${not empty param.ChangePassMessage}">
        <table width="316">
        <tr>
		<td colspan="2" style="font:16px calibri; color:red;">
			<font color="red">
				<c:out value="${ChangePassMessage}"/>.
			</font>
        </td>
        </tr>
        </table>
        </c:if>
		
		</br>
		 <form id="ChangePasswordForm" name="ChangePasswordForm" method="Post" action="changepassword" style="margin:0px;">
      <table width="316" border="0" cellspacing="0" cellpadding="0">

        <tr>
		<td width="106" height="30" style="font:14px calibri;
	color:#4f81bc;">Old Password :</td>
          <td width="210"><input type="password" name="Oldpass" id="Oldpass" class="inputField" /></td>
        </tr>

        <tr>
          <td height="30"><span style="font:14px calibri;
	color:#4f81bc;">New Password :</span></td>
          <td valign="middle"><input type="password" name="Newpass" id="Newpass" class="inputField" /></td>
        </tr>
        <tr>
          <td height="30"><span style="font:14px calibri;
	color:#4f81bc;">Confirm Password:</span></td>
          <td valign="middle"><input type="password" name="Cnfpass" id="Cnfpass" class="inputField" /></td>
        </tr>
        <tr>
          <td height="30">&nbsp;</td>
          <td height="40" valign="bottom"><input type="button" name="button" id="button" value="Submit" class="ui-corner-all" onclick="checkPassword();"  /></td>
        </tr>
        </table>
    </form></div>
    </div>
          <div class="Footer">&copy; Copyright 2011 Navprayas</div>
			 <div class="clr"></div>
      </body>
      </html>