<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	GuestbookDao dao = new GuestbookDao();
	List<GuestbookVo> list = dao.getList();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>	
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value=" 등록 "></td>
			</tr>
		</table>
	</form>
	<%
		int count = list.size();
		for (GuestbookVo vo : list) {
	%>

	<table width=510 border=1>
		<tr>
			<td><%=count--%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getRegDate()%></td>
			<!-- vo.getNo() -->
			<td><a href="deleteform.jsp?no=<%=vo.getNo()%>">삭제 </a></td>
		</tr>
		<tr>
		<!-- .replaceAll("\n", "<br>") -->
			<td colspan=4><pre><%=vo.getMessage()%></pre></td>
		</tr>
	</table>
	<br>
	<%
		}
	%>
</body>
</html>