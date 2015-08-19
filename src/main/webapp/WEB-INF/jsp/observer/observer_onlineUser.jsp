<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/static/images" var="images_url" />

<spring:url value="/static/css" var="css_url" />
<spring:url value="/static/js" var="js_url" />

<link href="${css_url}/style.css" rel="stylesheet" media="screen" />
<link type="text/css" href="${css_url}/jquery-ui-1.8.11.custom.css"
	rel="stylesheet" />
<script type="text/javascript" src="${js_url}/jquery-1.5.1.min.js"></script>
<script type="text/javascript"
	src="${js_url}/jquery-ui-1.8.11.custom.min.js"></script>

<table width="100%" cellpadding="0" cellspacing="0" >
     <tr style="color:#fff;">
      	<td width="30%" height="30" align="center" valign="middle" bgcolor="#9CBA5A" class="td" >Online User</td>
       </tr>
        <c:forEach var="onlineUserVO" items="${onlineUserVOList}">
         <tr>
           <td align="center" valign="middle" bgcolor="#EFEFF7" class="td">${onlineUserVO.userId}</td>
         </tr>
        </c:forEach> 
</table>

