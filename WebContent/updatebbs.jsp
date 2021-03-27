<%@page import="dto.BbsDto"%>
<%@page import="dao.BbsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

<%
int sqlNumber = Integer.parseInt( request.getParameter("sql") );
System.out.println(sqlNumber);

BbsDao dao = BbsDao.getInstance();
BbsDto setDto = dao.getContent(sqlNumber);
%>

<form action="updateAf.jsp?sql=<%=sqlNumber %>" method="post">
<div align="center">
	<table border="1">
		<col width="100"><col width="300">
		<tr>
			<td>작성자id</td><td><input type="text" name="id" value="<%=setDto.getId() %>" readonly></td>
		</tr>
		<tr>
			<td>작성일</td><td ><input type="text" name="date" value="<%=setDto.getWdate() %>"></td>
		</tr>
		<tr>
			<td>제목</td><td ><input type="text" name="title" value="<%=setDto.getTitle() %>"></td>
		</tr>
		<tr>
			<td>조회수</td><td><input type="text" name="count" value="0"></td>
		</tr>
		<tr>
			<td>정보</td><td>없음</td>
		</tr>
		<tr>
			<td>내용</td><td><textarea name="content" rows="20" cols="60"><%=setDto.getContent() %></textarea></td>
		</tr>
	</table>
	<input type="submit" value="수정완료"></button>
	<button type="button" id="btn2">취소</button>
</div>
</form>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#btn2").click(function() {
	});
});
</script>

</body>
</html>












