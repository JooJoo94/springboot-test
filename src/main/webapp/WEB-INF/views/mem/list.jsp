<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="/media/Screenshot_27.png"/>
	<table>
		<tr>
			<th>username</th>
			<th>email</th>
			<th>createDate</th>
			<th>edit</th>
		</tr>
		<c:forEach var="mem" items="${mems}">
			<tr>
				<td>${mem.username}</td>
				<td>${mem.email}</td>
				<td>${mem.createDate}</td>
				<td><button onclick="mem_update(${mem.id});">update</button></td>		
			</tr>
		</c:forEach>
		<td><button onclick="mem_join()">join</button></td>
	</table>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		function mem_update(mem_id) {
			location.href='/mem/'+mem_id;
			}
		function mem_join() {
			location.href='/mem/join';
			}	
	</script>

</body>
</html>

