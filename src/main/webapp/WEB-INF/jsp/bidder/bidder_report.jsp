<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 <spring:url value="/static/css" var="css_url" />
 <spring:url value="/static/js" var="js_url" />

<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MSL Auction</title>
<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
<link type="text/css" href="${css_url}/jquery-ui-1.8.11.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="${js_url}/tooltip.js"></script>
<script type="text/javascript" src="${js_url}/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="${js_url}/jquery-ui-1.8.11.custom.min.js"></script>
<script type="text/javascript">
		   function getResultForCategory(categoryId)
              {
	             var location1 = "${bidder_report_url}/report/"+categoryId;
	             window.location.href=location1
              }
      </script>
<script type="text/javascript">
			$(function(){
				// Dialog			
				
				$('.desc').dialog({
					autoOpen: false,
					width:'auto',
				});
				$('.bids').dialog({
					autoOpen: false,
					width:'auto',
				});
				$('.removediv').dialog({
					autoOpen: false,
					width:'auto',
				});
				$('.change').dialog({
					autoOpen: false,
					width:'auto',
					height:110,
				});
			
				
				// Dialog Link
				
				$('.description').click(function(){
				
					//$('.desc').dialog('open');
					$('#dialog_'+$(this).attr('id')).dialog('open');
					return false;
				});
				$('.autobid').click(function(){
				
					$('.bids').dialog('open');
					return false;
				});
				$('.remove').click(function(){
				
					$('.removediv').dialog('open');
					return false;
				});
				$('.changepass').click(function(){
				
					$('.change').dialog('open');
					return false;
				});
			
				
			});
		</script>
		<script type="text/javascript">
	
	$(function() {
		$(".desc").dialog({
			bgiframe: false,
			modal: true,
			
		});
	
	
		$(".bids").dialog({
			bgiframe: false,
			modal: true,
			
		});
	
	
		$(".removediv").dialog({
			bgiframe: false,
			modal: true,
			});
		$(".change").dialog({
			bgiframe: false,
			modal: true,
			
		});
	});

	</script>



<style type="text/css">
<!--
.td1 {background-color: #e9edf3;color : #ff0000; }
.td3 {background-color: #d0d7e7;color : #ff0000; }
-->
</style>
</head>

<body>
<%@ include file="/WEB-INF/jsp/bidder/bidder_report_top.jsp"%>
<div class="Mian"><div id="dhtmltooltip"></div>
<div class="CheckBoxMenu">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="84%" height="29" align="left" valign="middle" class="WonTitle">
       
         My Won Bids</td>
        <td width="16%" align="left" valign="middle">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="DetailDiv">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
          <td width="4%" height="40" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Sr No','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Sr. No</a></td>
           <td width="7%" height="40" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Description','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Description</a></td>
          <td width="7%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Lot No','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Lot No.</a></td>

           <td width="11%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Category Name','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Category Name</a></td>
        
        <td width="9%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Material Name','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Material Name</a></td>
        <td width="8%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Remark','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Remark</a></td>
        <td width="9%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Length Range','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Length Range</a></td>
        <td width="9%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Actual Length','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Actual Length<br />
          (Approx)</a></td>
        <td width="6%" align="center" valign="middle" bgcolor="#4f81bc" class="DetailBorRightTitle"><a href="#" onmouseover="ddrivetip('Quantity','', 'auto')";
onmouseout="hideddrivetip()" class="TitleLink">Quantity</a></td>
      </tr>
      <c:forEach items="${wonList}" var="bidItem" varStatus="status">
      <tr  class="table">
        <td height="40" align="center" valign="middle" class="DetailBorRight">${status.index+1}</td>
         <td align="center" valign="middle" class="DetailBorRight">
        
        
	     <div id="dialog_desc${status.index+1}"  class="desc" title="Item Description" style="display:none;">
        <table width="700" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="left" valign="top" ><form name="form1" method="post" action="" style="margin:0px;">
      <table width="700" border="0" cellspacing="0" cellpadding="0">
        <tr></tr>
        <tr>
          <td width="49" height="30" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Sr. No.</td>
          <td width="92" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Category</td>
          <td width="56" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Lot No. </td>
          <td width="131" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Materials Name</td>
          <td width="64" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Remark</td>
          <td width="96" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Length Range</td>
          <td width="125" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Actual Length <br>
            (Approx)</td>
          <td width="87" align="center" valign="middle" bgcolor="#abcb67" style="border-right:1px solid #fff;">Qty</td>
        </tr>
        <tr>
          <td height="30" align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${status.index+1}. </td>
          <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${bidItem.category.categoryName}</td>
          <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${bidItem.bidItemId}</td>
          <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${bidItem.name}</td>
           <c:if test="${fn:length(bidItem.itemLots) == 1}">
		        <c:forEach items="${bidItem.itemLots}" var="itemLotUnique" varStatus="status2">
				  <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${itemLotUnique.remark}</td>
		          <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${itemLotUnique.lengthRange}</td>
		          <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${itemLotUnique.actualLengh}</td>
				 </c:forEach>
		   </c:if>
	      <c:if test="${fn:length(bidItem.itemLots) > 1}">
		      <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">&nbsp;</td>
              <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">&nbsp;</td>
              <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">&nbsp;</td>
          </c:if>
        <td align="center" valign="middle" bgcolor="#f7c794" style="border-right:1px solid #fff;">${bidItem.totalQuantity} ${bidItem.unit}</td>
         </tr>
       
		   
	        <c:if test="${fn:length(bidItem.itemLots) > 1}">
			      <c:forEach items="${bidItem.itemLots}" var="itemLot" varStatus="status1">
			        <tr>
			          <td height="30" align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${status1.index+1} </td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${bidItem.category.categoryName}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.lotId}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.name}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.remark}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.lengthRange}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.actualLengh}</td>
			          <td align="center" valign="middle" bgcolor="#f0f3ea" style="border-right:1px solid #fff;">${itemLot.quantity} ${itemLot.unit}</td>
			        </tr>
	       		 </c:forEach>
	        </c:if>
        </table>
        </form>
        </td>
        </tr>
        </table>
        </div>
                <input type="submit" name="button3" id="desc${status.index+1}" value="Desc" class="description ui-state-default ui-corner-all" /></td>
                <td align="center" valign="middle" class="DetailBorRight">${bidItem.bidItemId}</td>
        <td align="center" valign="middle" class="DetailBorRight">${bidItem.category.categoryName}</td>
        <td align="center" valign="middle" class="DetailBorRight"><a href="#services" class="LinkSelected">${bidItem.name}</a></td>
        <c:if test="${fn:length(bidItem.itemLots) == 1}">
           <c:forEach items="${bidItem.itemLots}" var="itemLotUnique" varStatus="status2">
        <td align="center" valign="middle" class="DetailBorRight">${itemLotUnique.remark}</td>
        <td align="center" valign="middle" class="DetailBorRight">${itemLotUnique.lengthRange}</td>
        <td align="center" valign="middle" class="DetailBorRight">${itemLotUnique.actualLengh}</td>
        </c:forEach>
        </c:if>
          <c:if test="${fn:length(bidItem.itemLots) > 1}">
           <td align="center" valign="middle" class="DetailBorRight">&nbsp;</td>
           <td align="center" valign="middle" class="DetailBorRight">&nbsp;</td>
          <td align="center" valign="middle" class="DetailBorRight">&nbsp;</td>
          </c:if>
        <td align="center" valign="middle" class="DetailBorRight">${bidItem.totalQuantity} ${bidItem.unit}</td>
        </tr>
        
       
        
<!--        <td align="center" valign="middle" class="DetailBorRight">${bidItem.totalQuantity} ${bidItem.unit}</td>-->
      
        
        
        </c:forEach>

    </table>
  </div>
  <div class="GreenSpacer"></div>  

<div class="AutoBidBlue"></div>
      <div class="Footer">© Copyright 2011 Navprayas</div>
    <div class="clr"></div>
</div>
</body>
</html>
