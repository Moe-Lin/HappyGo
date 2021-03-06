<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增方案</title>
</head>
<script src="../jquery/jquery-2.1.4.min.js"></script>
<script src="../jquery/jquery-ui.js"></script>
<script src="../jquery/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../jquery/jquery.dataTables.min.css" />

<script>
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>
<body>
<h1>第二步：請設定促銷店家</h1>
<c:if test="${not empty insert}">
<h3>Insert PromotionProject Success</h3>
</c:if>

<c:if test="${not empty update}">
<h3>Update PromotionProject Success</h3>
</c:if>

	<%@ page import="conStore.model.*"%>
	<%@ page import="conStore.model.dao.*"%>
	<%@ page import="java.util.List"%>
	<%@ page import="javax.servlet.*"%>
	<%		
		ContractStoreDAO dao = new ContractStoreDAOJdbc();
		List<ContractStoreBean> result = dao.select();

	%>
	<h1>促銷活動編號：${param.PTP_PROJID}</h1>
	<!-- 1.促銷ID的response/sessin 2.往後丟給servlet, service, dao) -->
	
	<form action="<c:url value="/PromotionProject/PromotionStore.controller" />" method="get">
		<table id="myTable">
			<thead>
				<tr>
					<th></th>
					<th>是否參與</th>
					<th>特店代號</th>
					<th>特店名稱</th>
					<th>特店密碼</th>
					<th>統一編號</th>
					<th>特店地址</th>
					<th>特店狀態</th>
					<th>連絡電話</th>
					<th>聯絡人</th>
					<th>特店生效日</th>
					<th>特店失效日</th>
					<th>異動日期</th>
					<th>異動者</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
						<td><inpute type="text" value="${param.PTP_PROJID}" name="PTP_PROJID" readonly="value"></inpute></td>
				<c:forEach var="row" items="<%=result%>" varStatus="loop">
					<tr>
						<td><input type="checkbox" name="${row.cos_storeid}" value="1"/></td>
						<td>id:"${(loop.index)+1}"</td>
						<td>${row.cos_storeid}</td>
						<td>${row.cos_name}</td>
						<td>${row.cos_pwd}</td>
						<td>${row.cos_taxcode}</td>
						<td>${row.cos_address}</td>
						<td>${row.cos_status}</td>
						<td>${row.cos_phone}</td>
						<td>${row.cos_contact}</td>
						<td>${row.cos_createtime}</td>
						<td>${row.cos_deletime}</td>
						<td>${row.cos_updatetime}</td>
						<td>${row.cos_updateuser}</td>
						<td><input type="button" name="prodaction" value="修改"
							onclick="location.href='<c:url value="/conStore/contractStore.controller?storeid=${row.cos_storeid}&prodaction=修改"/>'"></td>
					</tr>
				</c:forEach>
			</tbody>
			<tr>
				<td align="center"><input type="submit" name="proChoiceStore" value="Insert"></td>
			</tr>
		</table>
</form>
</body>
</html>