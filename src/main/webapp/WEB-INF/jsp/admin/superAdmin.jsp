<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.text.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags' %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/static/images" var="images_url" />
<spring:url value="/static/css" var="css_url" />
<spring:url value="/admin/initcache" var="admin_initcache_url" />
<spring:url value="admin/closeAuction" var="close_auction_url"/>

<html>
<script type="text/javascript">
function initializeAuction(time){
	var auctionId = document.getElementById("auctionId").value;
	var location1 = "${admin_initcache_url}?auctionId="+auctionId+"&auctionTimeExt="+time;
	window.location.href=location1;
}
</script>
<head>
<title>MSL Auction - Initialize the Cache</title>
<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/admin/superadmin_top.jsp"%>


<br/>
<div class="Mian">
  <h2>Auction Management</h2>
  <% if(request.getParameter("Message") != null && !((String)request.getParameter("Message")).equalsIgnoreCase("") && !((String)request.getParameter("Message")).equalsIgnoreCase("null")) {
  		out.println("<font size='5px' color=blue>" + request.getParameter("Message")+ "</font>");
  	}
  %>
  <div class="DetailDiv">
  <table width="100%" border="0" style = "font:14px bold;" bgcolor="#dce6f2" cellspacing="0" cellpadding="0">
     <tr>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Sr. No.</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Auction Id</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Auction Name</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Status</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Auction Start Time</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Auction End Time</td>
          <td align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle">Action</td>
     </tr>
     <c:forEach items="${AuctionList}" var="auction" varStatus="status">
 		<tr class="table">
     		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${status.index+1}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${auction.auctionId}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${auction.name}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${auction.status}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${auction.auctionStartTime}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
     			${auction.auctionEndTime}
      		</td>
      		<td align="center" valign="middle" bgcolor="#f7c794" style="border:1px solid #fff;">
      			<c:if test="${auction.status == 'Start'}" >
      			    <c:if test="${aunctionRunningOrClosedPresent == 0}">
     					<a href="${admin_initcache_url}?auctionId=${auction.auctionId}">Start</a>
     				</c:if>
     				<c:if test="${aunctionRunningOrClosedPresent == 1}">
     					Close Running or Ended Auction First
     				</c:if>
     			</c:if>
     			<c:if test="${auction.status == 'End'}" >
     				<a href="${close_auction_url}?auctionId=${auction.auctionId}">Close</a>
     			</c:if>
     			<c:if test="${auction.status == 'Running'}" >
     				<a href="${close_auction_url}?auctionId=${auction.auctionId}">Close</a>
     			</c:if>
      		</td>
      	</tr>
  	</c:forEach>
  </table>
  </div>
  </div>
	<br/>
 <div class="clr"></div>
<div class="Footer" style="margin-top:380px">&copy; Copyright 2011 Navprayas</div>
   
   
</body>
</html>