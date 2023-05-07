<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와이파이 정보 구하기</title>
<style>
#bookmark {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#bookmark td, #bookmark th {
	border: 1px solid #ddd;
	padding: 8px;
}

#bookmark tr:nth-child(even) {
	background-color: #f2f2f2;
}

#bookmark tr:hover {
	background-color: #ddd;
}

#bookmark th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #04AA6D;
	color: white;
}
</style>
</head>
<body>
	<h1>북마크 그룹 수정</h1>
	<a href="wifiMain.jsp">홈</a> |
	<a href="wifiHistory.jsp">위치 히스토리 목록</a> |
	<a href="wifiInfo.jsp">Open API 와이파이 정보 가져오기</a> |
	<a href="bookmarkList.jsp">북마크 목록 보기</a> |
	<a href="bookmarkGroup.jsp">북마크 그룹 관리</a>
	<br>
	<br>
	<form action="bookmarkGroupEditPro.jsp" method="post">
		<table id="bookmark">
			<tr>
				<th>북마크 이름</th>
				<td><input type="text" name="name"
					value="<%=request.getParameter("name")%>"></td>
			</tr>
			<tr>
				<th>순서</th>
				<td><input type="text" name="ordernum"
					value="<%=request.getParameter("ordernum")%>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="bookmarkGroup.jsp">돌아가기</a> |
					<button>수정</button></td>
			</tr>
		</table>
	</form>
</body>
</html>