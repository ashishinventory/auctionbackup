
<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<spring:url value="/static/" var="static_url" />
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<spring:url value="/admin/superAdmin" var="admin_url" />



<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="${images_url}/images/favicon.png">

<title>Create Auction</title>

<!-- Bootstrap core CSS -->
<link href="${css_url}/css/bootstrap.css" rel="stylesheet">
<link href="${css_url}/css/font-awesome.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css_url}/css/custom.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- { header } -->
	<header class="header">
		<div class="container">
			<div class="col-xs-12 col-sm-3 hdr-lft">
				<div class="hdr-lft-in">
					<img src="${images_url}/images/maharashtra-seamless-ltd.png">
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 hdr-mdl">
				<div class="hdr-mdl-in">
					<marquee scrollamount="2" onmouseover="stop();"
						onmouseout="start();"> In case of any technical
						difficulties, please contact support at +912225970344 </marquee>
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
							<li class="active"><a href="#">Auction Management</a></li>
							<li><a href="#">User Auction Map</a></li>
							<li><a href="#">Create Vendor</a></li>
							<li><a href="#">Create User</a></li>
							<li><a href="#">Reset Password</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">Create Auction</a></li>
							<li><a href="#">File Upload</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
					<div class="welcom">
						<ul class="list-inline">
							<li>Welcome Admin |</li>
							<li><a href="#">Logout</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>

	<!-- { middle } -->
	<section class="main">
		<div class="container">
			<div class="form-container form-container-cr">
				<h1>
					<i class="fa fa-user"></i> E-Create Auction
				</h1>
				<form role="form">
					<div class="form-group">
						<label for="exampleAuctionName">Auction Name</label> <input
							type="text" class="form-control" id="exampleAuctionName"
							placeholder="Auction Name">
					</div>
					<div class="form-group">
						<label for="exampleInputstatus">Status</label> <select
							id="exampleInputstatus" class="form-control">
							<option>Select</option>
							<option>1</option>
							<option>2</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleIsapproved">Is Approved</label> <select
							id="exampleIsapproved" class="form-control">
							<option>Select</option>
							<option>1</option>
							<option>2</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleCreatedTime">Created Time</label> <input
							type="text" class="form-control" id="exampleCreatedTime"
							placeholder="Created Time">
					</div>
					<div class="form-group form-submit">
						<button class="btn btn-primary pull-right" type="submit">Sign
							In</button>
						<div class="clearfix"></div>
					</div>
				</form>
			</div>
		</div>
		<!-- /container -->
	</section>

	<!-- { footer } -->
	<footer class="footer">
		<div class="container">
			<div class="col-xs-12 col-sm-6 copyrgt">
				<p>Copyright &copy; 2015 Navprayas</p>
			</div>
			<div class="col-xs-12 col-sm-6 poweredby text-right">
				<p>
					Developed By: <a href="http://cfeindia.com/">CFE India</a>
				</p>
			</div>
		</div>
	</footer>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${js_url}/js/bootstrap.min.js"></script>
	<script src="${js_url}/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>




<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<spring:url value="/static/" var="static_url" />
<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />
<spring:url value="/admin/superAdmin" var="admin_url" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MSL E-Auction Vendor Registration Form</title>
<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
<link type="text/css" rel="stylesheet"
	href="${css_url}/dhtmlgoodies_calendar.css?random=20051112"
	media="screen"></link>
<script type="text/javascript"
	src="${js_url}/dhtmlgoodies_calendar.js?random=20060118"></script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/admin/superadmin_top.jsp"%>
	<script type="text/javascript">
		pathToImages = "${static_url}" + pathToImages;
	</script>
	<div class="Mian">
		<form id="createAuction" name="createAuction" method="post"
			action="createAuction" modelAttribute="firmDetails">
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				align="center">

				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>E-Create
							Auction</b><br /></td>
					<td valign="middle"></td>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="right"><b><c:out
								value="${messages }"></c:out></b><br /></td>
					<td valign="middle"></td>
				</tr>
				<c:if test="${not empty auctionDetails.auctionId}">
					<tr>
						<td width="266" height="30" align="center"
							style="font: 14px calibri; color: #4f81bc;" align="left"></td>
						<td width="150" align="left"><input type="hidden"
							name="auctionId" id="auctionId"
							value="${auctionDetails.auctionId}" /></td>

					</tr>
				</c:if>

				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="left">Auction
						Name :</td>
					<td width="150" align="left"><input type="text" name="name"
						id="name" class="inputField" value="${auctionDetails.name}" /></td>

				</tr>
				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="left">Status</td>
					<td width="150" align="left"><select name="status" id="status">
							<option
								<c:if test="${auctionDetails.status=='0'}">selected='selected'</c:if>
								value="0">select</option>
							<option
								<c:if test="${auctionDetails.status=='Start'}">selected='selected'</c:if>
								value="Start">Start</option>
							<option
								<c:if test="${auctionDetails.status=='Running'}">selected='selected'</c:if>
								value="Running">Running</option>
					</select></td>
				</tr>
				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="left">Is
						Approved</td>
					<td width="150" align="left"><select name="isApproved"
						id="isApproved">
							<option
								<c:if test="${auctionDetails.isApproved=='-1'}">selected='selected'</c:if>
								value="-1">select</option>
							<option
								<c:if test="${auctionDetails.isApproved=='1'}">selected='selected'</c:if>
								value="1">Yes</option>
							<option
								<c:if test="${auctionDetails.isApproved=='0'}">selected='selected'</c:if>
								value="0">No</option>
					</select></td>
				</tr>



				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="left">Created
						Time</td>
					<td width="150" align="left"><input type="text"
						name="createdTimeFormat" id="createdTimeFormat" readonly
						onclick="displayCalendar(document.createAuction.createdTimeFormat,'yyyy/mm/dd',this)"
						value="${auctionDetails.createdTime}" /></td>
				</tr>

				<tr>
					<td height="30">&nbsp;</td>
					<td valign="middle"><input type="button" name="button"
						id="button" value="Submit" onclick="javascript:checkAuction();"
						onclass="ui-corner-all" /></td>
				</tr>
			</table>
		</form>

		<table width="100%" border="1" cellspacing="0" cellpadding="0">
			<c:if test="${not empty auctionlist}">
				<tr>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>Auction
							Id</b><br /></td>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>Auction
							Name</b><br /></td>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>Auction
							Status</b><br /></td>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>Auction
							Is Approved</b><br /></td>
					<td width="266" height="30" align="center"
						style="font: 14px calibri; color: #4f81bc;" align="center"><b>Modify
							Auction</b><br /></td>

				</tr>


				<c:forEach var="auction" items="${auctionlist}" varStatus="status">
					<tr>

						<td width="266" height="30" align="center"
							style="font: 12px calibri;" align="center"><b>${status.index+1}</b><br /></td>
						<td width="266" height="30" align="center"
							style="font: 12px calibri;" align="center"><b>${auction.name}</b><br /></td>

						<td width="266" height="30" align="center"
							style="font: 12px calibri;" align="center"><b>${auction.status}</b><br /></td>

						<td width="266" height="30" align="center"
							style="font: 12px calibri;" align="center"><b> <c:choose>

									<c:when test="${auction.isApproved==1}">
					Appoved
					</c:when>
									<c:otherwise>
					Not Approved
					</c:otherwise>
								</c:choose>
						</b><br /></td>
						<td width="266" height="30" align="center"
							style="font: 12px calibri;" align="center"><b><a
								href="editauction?auctionId=${auction.auctionId}">Modify </a></b><br /></td>


					</tr>
				</c:forEach>
			</c:if>
		</table>







	</div>
	<br />
	<div class="Footer">&copy; Copyright 2011 Navprayas</div>
	<div class="clr"></div>
	<script>
		function checkAuction() {

			var Name = document.getElementById("name").value;
			var CreatedTimeFormat = document
					.getElementById("createdTimeFormat").value;
			var Status = document.getElementById("status").value;
			var IsApproved = document.getElementById("isApproved").value;

			if (Name == "") {
				alert(" Name Cannot Be Blank.")
				return false;
			}

			if (Status == 0) {
				alert(" Select Status.")
				return false;
			}
			if (IsApproved == -1) {
				alert(" Select IsApproved.")
				return false;
			}
			if (CreatedTimeFormat == "") {
				alert("Created Time Cannot Be Blank.")
				return false;
			}
			document.createAuction.submit();

		}
	</script>
</body>
</html> --%>