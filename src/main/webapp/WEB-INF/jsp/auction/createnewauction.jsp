<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MSL Auction - Create New Auction</title>
<link href="/bidding/static/css/style.css" rel="stylesheet"
	media="screen" />
<script type="text/javascript" src="/bidding/static/js/csspopup.js"></script>
<link rel="stylesheet" media="screen"
	href="/bidding/static/css/zd_dialog.css" />
<script language='JavaScript' type='text/JavaScript'
	src='/bidding/static/js/zd_draganddrop.js'></script>
<link href="/bidding/static/css/menu.css" rel="stylesheet"
	media="screen" />
</head>

<body>

	<div class="Top">
		<div class="Logo">
			<span class="MahaLogo"><img
				src="/bidding/static/images/maharashtra-seamless-ltd.png"
				width="241" height="76"></span>
		</div>
		<div class="Scroll">
			<marquee scrollamount="2" onMouseOver="stop();" onMouseOut="start();">
				In case of any technical difficulties, please contact support at
				+918010462991 </marquee>
		</div>
		<div class="JindalLogo">
			<img src="/bidding/static/images/jindal-logo.png" width="164"
				height="40">
		</div>
	</div>
	<div class="MenuMain">
		<div class="MenuBtnselected" id="superadmitab1">
			<a href="/bidding/admin/superAdmin">Auction Management</a>
		</div>
		<div class="MenuBtn" id="superadmitab2">
			<a href="/bidding/admin/userauctionmap">User Auction Map</a>
		</div>
		<div class="MenuBtn" id="admitab1">
			<a href="/bidding/admin/vendorRegistrationPage">Create Vendor</a>
		</div>
		<div class="MenuBtn" id="admitab2">
			<a href="/bidding/admin/registrationPage">Create User</a>
		</div>
		<div class="MenuBtn" id="admitab3">
			<a href="/bidding/admin/resetPasswordPage">Reset Password</a>
		</div>
		<div class="MenuBtn" id="changepasstab">
			<a href="/bidding/changepass">Change Password</a>
		</div>
		<div class="MenuBtn" id="changepasstab">
			<a href="/bidding/auction/createnewauction">Create New Auction</a>
		</div>
		<div class="WelcomeUser">
			Welcome superadmin &nbsp;| &nbsp; <a href="/bidding/j_logout"
				class="logout">Logout</a>
		</div>

	</div>
	<br />
	<div style="font: 14px calibri; color: #4f81bc; align: middle;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="36%" align="center" valign="middle">Create New
					Auction</td>
			</tr>
		</table>
	</div>


	<form id="" name="" method="POST" action="createAuction"
		modelAttribute="modelAt" style="margin: 0px;">
		<table width="416" border="0" cellspacing="0" cellpadding="0">


			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Auction
					Name</td>
				<td width="150"><input type="text" name="auctionName"
					id="auctionName" class="inputField" /></td>
			</tr>

			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Is
					Approved</td>
				<td width="150"><select name="isApproved" id="isApproved">
						<option value="0">select</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
				</select></td>
			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Created
					Time</td>
				<td width="150"><input type="date" name="createdTimeFormat"
					id="createdTime" class="inputField" /></td>
			</tr>


			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Last
					Update Time</td>
				<td width="150"><input type="date" name="lastUpdateTimeFormat"
					id="lastUpdateTime" class="inputField" /></td>
			</tr>

			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Auction
					Start Time</td>
				<td width="150"><input type="date"
					name="auctionStartTimeFormat" id="auctionStartTime"
					class="inputField" /></td>
			</tr>

			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle">Auction
					End Time :</td>
				<td width="150"><input type="date" name="auctionEndTimeFormat"
					id="auctionEndTime" class="inputField" /></td>
			</tr>

			<tr>
				<td width="266" height="30"
					style="font: 14px calibri; color: #4f81bc;" align="middle"></td>
				<td width="150"><input type="submit" name="submit" id="submit"
					class="submit" /></td>
			</tr>
			
</body>
</html>