<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/HappyGo_2/css/main.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/t/dt/jq-2.2.0,dt-1.10.11/datatables.min.js"></script>
<script src="/HappyGo_2/jquery/jquery-ui.js" type="text/javascript"></script>
<script
	src="/HappyGo_2/jquery/dataTable/columnFilter/jquery.dataTables.columnFilter.js"
	type="text/javascript" language="javascript"></script>
<script type="text/javascript" language="javascript">
	jQuery(document).ready(function() {
		jQuery("#report_table").dataTable(

		);

	});
</script>

<title>點數交易查詢</title>
</head>
<body>
	<div>
		<form action="/HappyGo_2/reportServer" name="form" method="post"
			target="_blank">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>點數交易查詢</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">會員ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="userid"
						name="report_id"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">特約商店ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="userid"
						name="report_store"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">起始日期</TD>
					<TD for="meeting"><input id="meeting" type="date"
						name="report_day1" value="2014-01-13"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">結束日期</TD>
					<TD for="meeting"><input id="meeting" type="date"
						name="report_day2" value="2014-01-13"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="submit" name="report_prodaction" value="查詢" /> <input
						type="submit" name="report_prodaction" value="產生PDF" /></TD>
				</TR>
			</TABLE>
			<c:if test="${not empty report_select}" >
				<table id="report_table">
					<thead>
						<tr>
							<th>會員編號</th>
							<th>消費地點</th>
							<th>交易日期</th>
							<th>消費金額</th>
							<th>折抵金額</th>
							<th>消費給點</th>
							<th>消耗點數</th>
							<th>剩餘點數</th>
							<th>交易狀態</th>
							<th>取消交易</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${report_select}">
							<c:url value="/report/cancel.jsp" var="path" scope="page">
								<c:param name="cancel" value="${row.SOP_TRANID}" />
							</c:url>
							<tr>
								<td>${row.SOP_MEMBERID}</td>
								<td>${row.COS_NAME}</td>
								<td>${row.CPT_TRANDATE}</td>
								<td>${row.SOP_TRANAMT}</td>
								<td>${row.SOP_DISCOUNT}</td>
								<td>${row.CPT_POINTADD}</td>
								<td>${row.CPT_POINTDRE}</td>
								<td>${row.SOP_overPoint}</td>
								<td>${row.transation}</td>
								<td>
									<c:if test="${row.SOP_STATUS !='0'}">
										<input type=button value="取消交易" onclick="location.href='${path}'">
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<th>會員編號</th>
							<th>消費地點</th>
							<th>交易日期</th>
							<th>消費金額</th>
							<th>折抵金額</th>
							<th>消費給點</th>
							<th>消耗點數</th>
							<th>剩餘點數</th>
							<th></th>
						</tr>
					</tfoot>
				</table>
			</c:if>
		</form>
	</div>

</body>
</html>