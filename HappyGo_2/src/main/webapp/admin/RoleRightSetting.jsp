<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/admin/TopMeau.jsp" />

	<div style="width: 800px; height: 600px;">
		<table style="background-color: #F0E68C;">
			<thead>
				<tr>
					<th colspan="2">後台系統權限項目管理</th>
				</tr>				
			</thead>
			<tbody>
				<tr>
					<td colspan="2"><c:if test="${not empty select}">
							<table id="userslist" class="t2">
								<thead>
									<tr>
										<th>權限代碼</th>
										<th>權限說明</th>
										<th>權限對應功能</th>
										<th>權限更新日</th>
										<th>權限更新者</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="row" items="${select}">
										<c:url value="/dayuNameSpace/rightlist.action" var="path_edit"
											scope="page">
											<c:param name="RIG_RIGHTID" value="${row.RIG_RIGHTID}" />
											<c:param name="mode" value="edit" />
										</c:url>
										<tr>
											<td><a href="${path_edit}">${row.RIG_RIGHTID}</a></td>
											<td>${row.RIG_DESC}</td>
											<td>${row.RIG_FUNTION}</td>
											<td>${row.RIG_UPDATETIME}</td>
											<td>${row.RIG_UPDATEUSER}</td>
											<td><button
													onclick="window.location.href='${path_edit}'">修改</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>

		<div id="users-contain" class="ui-widget">
			<form name="myForm" id="myForm"
				action='<c:url value="/dayuNameSpace/rightlist.action?mode=update"/>'
				method="get">
				<h1>使用者資料</h1>
				<table id="users" class="t2">
					<thead>
						<tr>
							<th>項目</th>
							<th>內容</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty edit}">
							<tr>
								<td>權限代碼</td>
								<td><input id="RIG_RIGHTID" name="RIG_RIGHTID" type="text"
									value=${edit.RIG_RIGHTID}></td>
							</tr>
							<tr>
								<td>權限說明</td>
								<td><input id="RIG_DESC" name="RIG_DESC" type="text"
									value=${edit.RIG_DESC}></td>
							</tr>
							<tr>
								<td>權限對應功能</td>
								<td><input id="RIG_FUNTION" name="RIG_FUNTION" type="text"
									value=${edit.RIG_FUNTION}></td>
							</tr>
							<tr>
								<td colspan="2">
								<input name="formSubmit" type="submit"	value="儲存" />
								<input id="cancel" value="取消" type="button">
								<input type="hidden" name="mode" value="update"></td>

							</tr>
						</c:if>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</body>
<script>
	var strUrl = location.search;
	var getPara, ParaVal;
	var aryPara = [];
	function submi_form() {
		var myForm = document.forms['myForm'];
		var formSubmit = document.getElementById('formSubmit');
		formSubmit.onclick = function() {
			myForm.submit();
		}
	}
	if (strUrl.indexOf("?") != -1) {
		var getSearch = strUrl.split("?");
		getPara = getSearch[1].split("&");
		for (i = 0; i < getPara.length; i++) {
			ParaVal = getPara[i].split("=");
			aryPara.push(ParaVal[0]);
			aryPara[ParaVal[0]] = ParaVal[1];
		}
		//alert(aryPara["mode"]);
		$('#users-contain').hide();
		if (aryPara["mode"] != null && aryPara["mode"].toString() == "edit") {

			//alert(aryPara["mode"].toString());
			$('#users-contain').show();
			$('#users-contain').dialog({
				autoOpen : true,
				modal : false
			});
		}
	}
	$("#cancel").click(function() {
		$('#users-contain').dialog("close");
	});
	$(function() {
		var opt = {
			"info" : false,
			"lengthChange" : false,
			"searching" : false,
			"stateSave" : true,
			"oLanguage" : {

				"sProcessing" : "處理中...",
				"sLengthMenu" : "顯示 _MENU_ 項結果",
				"sZeroRecords" : "沒有匹配結果",
				"sInfo" : "顯示第 _START_ 至 _END_ 項結果，共 _TOTAL_ 項",
				"sInfoEmpty" : "顯示第 0 至 0 項結果，共 0 項",
				"sInfoFiltered" : "(從 _MAX_ 項結果過濾)",
				"sSearch" : "搜索:",
				"oPaginate" : {
					"sFirst" : "首頁",
					"sPrevious" : "上頁",
					"sNext" : "下頁",
					"sLast" : "尾頁"
				}
			}
		};
		$('#main').button();
		$('#dataprofile').button();
		$('#userslist').DataTable(opt);
		$('#users-contain').hide();
		if (aryPara["mode"] != null
				&& (aryPara["mode"].toString() == "edit" || aryPara["mode"]
						.toString() == "selectitem")) {
			//alert("test");
			$('#users-contain').show();
			$('#users-contain').dialog({
				open : function() {
					// On open, hide the original submit button
					$(this).find("[type=button]").click(function() {
						$('#users-contain').dialog("close");
					});
				},
				close : function() {
					$('#users-contain').dialog("close");
				}
			});
		}
	});
	
	var message = '<%=request.getAttribute("message")%>';
	if (message != null && message != ""&& message != "null")
		alert(message);
</script>
</html>