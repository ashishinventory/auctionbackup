<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<spring:url value="/admin" var="admin_home_url" />
<spring:url value="/admin/superAdmin" var="superadmin_home_url" />
<spring:url value="/static/pdf" var="pdf_url" />
<spring:url value="/" var="home_url" />
<spring:url value="/admin/userauctionmap" var="user_auction_map_url"/>
<spring:url value="/admin/registrationPage" var="userRegistration_url" />
<spring:url value="/admin/vendorRegistrationPage" var="vendorRegistration_url" />
<spring:url value="/admin/resetPasswordPage" var="passwordReset_url" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MSL Auction</title>
<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
<script type="text/javascript" src="${js_url}/csspopup.js"></script>
 <link rel="stylesheet" media="screen" href="${css_url}/zd_dialog.css"/>
    <script language='JavaScript' type='text/JavaScript' src='${js_url}/zd_draganddrop.js'></script>
<link href="${css_url}/menu.css" rel="stylesheet" media="screen" />
</head>
<body>
<div class="Top">
  <div class="Logo"><span class="MahaLogo"><img src="${images_url}/maharashtra-seamless-ltd.png" width="241" height="76"></span></div>
  <div class="Scroll">
  	<marquee scrollamount="2" onMouseOver="stop();" onMouseOut="start();">
  		In case of any technical difficulties, please contact support at  +912225970344
    </marquee>
  </div>
        <div class="JindalLogo"><img src="${images_url}/jindal-logo.png" width="164" height="40"></div>
</div>
<div class="MenuMain"> 
    <sec:authorize ifAllGranted="ROLE_SUPER_ADMIN">
		<div class="MenuBtn"><a href="${superadmin_home_url}">Auction Management</a></div>	
		<div class="MenuBtn" id="superadmitab2"><a href="${user_auction_map_url}">User Auction Map</a></div>
	</sec:authorize>
    <div class="MenuBtnselected"><a href="${vendorRegistration_url}">Create Vendor</a></div>
    <div class="MenuBtn"><a href="${userRegistration_url}">Create User</a></div>
    <div class="MenuBtn"><a href="${passwordReset_url}">Reset Password</a></div>
    <!-- <div class="MenuBtn">
    <a href="#" onclick="popup('partpopup')">Manage Sequence </a></div>
      <div class="MenuBtn"><a href="#">Manage Pages </a></div> -->
      <div class="MenuBtn"><a href="${home_url}changepass">Change Password</a></div>      
      <div class="WelcomeUser">Welcome <security:authentication property="principal.username"/> &nbsp;| &nbsp; <a href="<c:url value="/j_logout"/>" class="logout">Logout</a></div>
      
</div>
</body>
</html>