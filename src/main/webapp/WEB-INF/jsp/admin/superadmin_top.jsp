<%-- <%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<spring:url value="/admin/superAdmin" var="admin_home_url" />
<spring:url value="/static/pdf" var="pdf_url" />
<spring:url value="/admin/userauctionmap" var="user_auction_map_url"/>
<spring:url value="/admin/registrationPage" var="userRegistration_url" />
<spring:url value="/admin/vendorRegistrationPage" var="vendorRegistration_url" />
<spring:url value="/admin/resetPasswordPage" var="passwordReset_url" />
<spring:url value="/admin/FileUpload" var="fileupload_url" />
<spring:url value="/admin/CreateAuction" var="createauction_url" />
<spring:url value="/" var="home_url" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MSL Auction - Super Admin</title>
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
  		In case of any technical difficulties, please contact support at  +919015054395
    </marquee>
  </div>
        <div class="JindalLogo"><img src="${images_url}/jindal-logo.png" width="164" height="40"></div>
</div>
<div class="MenuMain">
	<div class="MenuBtnselected" id="superadmitab1"><a href="${admin_home_url}">Auction Management</a></div>
	<div class="MenuBtn" id="superadmitab2"><a href="${user_auction_map_url}">User Auction Map</a></div>
    <div class="MenuBtn" id="admitab1"><a href="${vendorRegistration_url}">Create Vendor</a></div>
    <div class="MenuBtn" id="admitab2"><a href="${userRegistration_url}">Create User</a></div>
    <div class="MenuBtn" id="admitab3"><a href="${passwordReset_url}">Reset Password</a></div>
    <div class="MenuBtn" id="changepasstab"><a href="${home_url}changepass">Change Password</a></div>
    <div class="MenuBtn" id="createauction"><a href="${createauction_url}">Create Auction</a></div>  
    <div class="MenuBtn" id="fileupload"><a href="${fileupload_url}">File Upload</a></div>         
    <div class="WelcomeUser">Welcome <security:authentication property="principal.username"/> &nbsp;| &nbsp; <a href="<c:url value="/j_logout"/>" class="logout">Logout</a></div>
     
     
     
     
</div>
</body>
</html> --%>


<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<spring:url value="/admin/superAdmin" var="admin_home_url" />
<spring:url value="/static/pdf" var="pdf_url" />
<spring:url value="/admin/userauctionmap" var="user_auction_map_url" />
<spring:url value="/admin/registrationPage" var="userRegistration_url" />
<spring:url value="/admin/vendorRegistrationPage"
	var="vendorRegistration_url" />
<spring:url value="/admin/resetPasswordPage" var="passwordReset_url" />
<spring:url value="/admin/FileUpload" var="fileupload_url" />
<spring:url value="/admin/CreateAuction" var="createauction_url" />
<spring:url value="/" var="home_url" />
<link href="${css_url}/css/bootstrap.css" rel="stylesheet">
<link href="${css_url}/css/font-awesome.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css_url}/css/custom.css" rel="stylesheet">


<div class="container">
	<div class="col-xs-12 col-sm-3 hdr-lft">
		<div class="hdr-lft-in">
			<img src="${images_url}/images/maharashtra-seamless-ltd.png">
		</div>
	</div>
	<div class="col-xs-12 col-sm-6 hdr-mdl">
		<div class="hdr-mdl-in">
			<marquee scrollamount="2" onmouseover="stop();" onmouseout="start();">
				In case of any technical difficulties, please contact support at
				+912225970344 </marquee>
		</div>
	</div>
	<div class="col-xs-12 col-sm-3 hdr-rgt">
		<div class="hdr-rgt-in text-right">
			<img src="${images_url}/images/jindal-logo.png">
		</div>
	</div>
</div>
<div class="strip-bar">
	<div class="container">
		<nav class="navbar">
			<div class="navbar-header">
				<button aria-controls="navbar" aria-expanded="false"
					data-target="#navbar" data-toggle="collapse"
					class="navbar-toggle collapsed" type="button">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar">
				<ul class="nav navbar-nav auction-menu">
					<li class="active"><a href="${admin_home_url}">Auction Management</a></li>
					<li><a href="${user_auction_map_url}">User Auction Map</a></li>
					<li><a href="${vendorRegistration_url}">Create Vendor</a></li>
					<li><a href="${userRegistration_url}">Create User</a></li>
					<li><a href="${passwordReset_url}">Reset Password</a></li>
					<li><a href="${home_url}changepass">Change Password</a></li>
					<li><a href="${createauction_url}">Create Auction</a></li>
					<li><a href="${fileupload_url}">File Upload</a></li>
					
     
					
					
					
				</ul>
			</div>
			<!--/.nav-collapse -->
			<div class="welcom">
				<ul class="list-inline">
					<li>Welcome <security:authentication property="principal.username"/></li>
					<li><a href="<c:url value="/j_logout"/>">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
</div>
