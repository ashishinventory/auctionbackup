<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags' %>
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
<link type="text/css" rel="stylesheet" href="${css_url}/dhtmlgoodies_calendar.css?random=20051112" media="screen"></link>
<script type="text/javascript" src="${js_url}/dhtmlgoodies_calendar.js?random=20060118"></script>
</head>
<body>
<%@ include file="/WEB-INF/jsp/admin/superadmin_top.jsp"%>
<script type="text/javascript">
pathToImages = "${static_url}" + pathToImages;
</script>
<div class="Mian">
		  
	<table width="316">
		        <tr>
					<td colspan="2" style="font:16px calibri; color:red;">
						<font color="red">
							<c:out value="${Confirmation}"/>
						</font>
			        </td>
		        </tr>
		  </table>	  
   <form id="vendorForm" name="vendorForm" method="post" action="vendorRegistration" modelAttribute="firmDetails">
      <table width="832" border="0" cellspacing="0" cellpadding="0">

		 <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>E-Auction Vendor Registration Form</b><br/></td>
        	<td valign="middle"></td>
        </tr>

        <tr>
			<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="middle">Name of Firm/Company :</td>
            <td width="150"><input type="text" name="firmName" id="firmName" class="inputField" /></td>
            <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Phone No.</td>
          	<td width="150"><input type="text" name="phoneNo" id="phoneNo" class="inputField" /></td>
        </tr>
        <tr>
		  <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="middle">Contact Person: - 1</td>
          <td width="150"><input type="text" name="contactPersonName1" id="contactPersonName1" class="inputField" /></td>
          <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Mobile No.</td>
          <td width="150"><input type="text" name="mobileNo" id="mobileNo" class="inputField" /></td>
        </tr>
        <tr>
		  <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="middle">Contact Person: - 2</td>
          <td width="150"><input type="text" name="contactPersonName2" id="contactPersonName2" class="inputField" /></td>
          <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Res.No.:</td>
          <td width="150"><input type="text" name="resNo" id="resNo" class="inputField" /></td>
        </tr>
         <tr>
			<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="middle">Name of Proprietor/Director/Owner/Partner:-</td>
            <td width="150"><input type="text" name="directorName" id="age" class="directorName" /></td>
            <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Fax No.</td>
            <td width="210"><input type="text" name="faxNo" id="faxNo" class="inputField" /></td>
        </tr>              
		<tr>
		<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">E-Mail ID :</td>
          <td width="150"><input type="text" name="emailAddress" id="emailAddress" class="inputField" value=""/></td>
        </tr>
         <tr>
          <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Office Address: -</td>
          <td valign="middle"><input type="text" name="officeAddress" id="officeAddress" class="inputField" value=""/></td>
          <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Godown Address: -</td>
          <td valign="middle"><input type="text" name="godownAddress" id="godownAddress" class="inputField" value=""/></td>
        </tr>
        
         <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>Firm Registration Details: -</b></td>
        	<td valign="middle"></td>
        </tr>
        
        <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">VAT TIN No.</td>
        	<td valign="middle"><input type="text" name="vatTINNo" id="vatTINNo" class="inputField" value=""/></td>
        	
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">PAN No.</td>
        	<td valign="middle"><input type="text" name="panNo" id="panNo" class="inputField" value=""/></td>
       
        </tr>
        
         <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">CST TIN No.</td>
        	<td valign="middle"><input type="text" name="cstTINNo" id="cstTINNo" class="inputField" value=""/></td>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Income Tax Registration No.</td>
        	<td valign="middle"><input type="text" name="incomeTaxRegistrationNo" id="incomeTaxRegistrationNo" class="inputField" value=""/></td>
        </tr>
                
         <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>Security Deposit Details: </b></td>
        	<td valign="middle"></td>
        </tr>
        
        <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">CQ/DD/RTGS GTR No.</td>
        	<td valign="middle"><input type="text" name="securityGrtNo" id="securityGrtNo" class="inputField" value=""/></td>
            <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Amount</td>
        	<td valign="middle"><input type="text" name="securityAmount" id="securityAmount" class="inputField" value=""/></td>
        </tr>
        
         <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Date</td>
        	<td valign="middle"><input type="text" name="securityDate" id="securityDate" readonly onclick="displayCalendar(document.vendorForm.securityDate,'dd/mm/yyyy',this)"/>
        	</td>
        </tr>
       
       <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>Firm Bank A/c Details: -</b></td>
        	<td valign="middle"></td>
        </tr>
        
        <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">A/c Type</td>
        	<td valign="middle"><input type="text" name="acountType" id="acountType" class="inputField" value=""/></td>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Bank Name</td>
        	<td valign="middle"><input type="text" name="bankName" id="bankName" class="inputField" value=""/></td>
        </tr>
        
         <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">A/c No.</td>
        	<td valign="middle"><input type="text" name="accountNumber" id="accountNumber" class="inputField" value=""/></td>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Bank Address: -</td>
        	<td valign="middle"><input type="text" name="bankAddress" id="bankAddress" class="inputField" value=""/></td>
        </tr>
        
        <tr>
            <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">IFSC Code</td>
        	<td valign="middle"><input type="text" name="IFSCCode" id="IFSCCode" class="inputField" value=""/></td>
        </tr>
          
  		<tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>Sister Concern Firm Details: -</b></td>
        	<td valign="middle"></td>
        </tr>
        
        <tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Firm No - 1</td>
        	<td valign="middle"><input type="text" name="sisterFirmNo1" id="sisterFirmNo1" class="inputField" value=""/></td>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Firm No - 3</td>
        	<td valign="middle"><input type="text" name="sisterFirmNo3" id="sisterFirmNo3" class="inputField" value=""/></td>
        </tr>
        
         <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Firm No - 2</td>
        	<td valign="middle"><input type="text" name="sisterFirmNo2" id="sisterFirmNo2" class="inputField" value=""/></td>
        </tr>
  
  		<tr>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center"><b>Excise Details: -</b></td>
        	<td valign="middle"></td>
        </tr>
        
        <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Registration No.</td>
        	<td valign="middle"><input type="text" name="exciseRegistrationNo" id="exciseRegistrationNo" class="inputField" value=""/></td>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Division</td>
        	<td valign="middle"><input type="text" name="eDivision" id="eDivision" class="inputField" value=""/></td>
        </tr>
        
        <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Range</td>
        	<td valign="middle"><input type="text" name="exciseRange" id="exciseRange" class="inputField" value=""/></td>
        	<td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Division Address: -</td>
        	<td valign="middle"><input type="text" name="eDivisionAddress" id="eDivisionAddress" class="inputField" value=""/></td>
        </tr>
        
        <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Range Address: -</td>
        	<td valign="middle"><input type="text" name="eRangeAddress" id="eRangeAddress" class="inputField" value=""/></td>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">Commissionerate</td>
        	<td valign="middle"><input type="text" name="eCommissionerate" id="eCommissionerate" class="inputField" value=""/></td>
        </tr>         
        <tr>
        	 <td width="266" height="30" style="font:14px calibri; color:#4f81bc;" align="center">ECC No.</td>
        	<td valign="middle"><input type="text" name="eccNo" id="eccNo" class="inputField" value=""/></td>
        </tr>     
             
                
        <tr>
          <td height="30">&nbsp;</td>
          <td valign="middle"><input type="button" name="button" id="button" value="Submit" onclick="javascript:checkRegistration();" onclass="ui-corner-all"/></td>
        </tr>
        </table>
    </form>
 </div>   
 <br />
 <div class="Footer">&copy; Copyright 2011 Navprayas</div>
 <div class="clr"></div>
    <script>
	function checkRegistration()
	{
		
		var firmName = document.getElementById("firmName").value;
		var phoneNo = document.getElementById("phoneNo").value;
		var contactPersonName1 = document.getElementById("contactPersonName1").value;
		var mobileNo = document.getElementById("mobileNo").value;
		
		var securityDate = document.getElementById("securityDate").value;
		
		if( firmName=="") {
			alert("Firm Name Cannot Be Blank.")
			return false;
    	}
		if( phoneNo =="") {
			alert("Phone Number Cannot Be Blank.")
			return false;
    	}
		
		if( contactPersonName1 =="") {
			alert("Contact Person Name1 Cannot Be Blank.")
			return false;
    	}
		
		if( mobileNo=="") {
			alert("Mobile Number Cannot Be Blank!!")
			return false;
    	}
		
		if( securityDate=="") {
			alert("securityDate Cannot Be Blank.")
			return false;
    	}		
		document.vendorForm.submit();  
		
 	}
</script>
</body>
</html>