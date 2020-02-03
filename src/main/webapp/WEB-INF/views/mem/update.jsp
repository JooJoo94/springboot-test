<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정 페이지</title>
</head>
<body>
	<table>
		<tr>
			<th>id</th>
			<th>username</th>
			<th>password</th>
			<th>email</th>
			<th>createDate</th>
		</tr>

		<tr>
			<td><input id="id" type="text" value="${mem.id}" /></td>
			<td><input type="text" value="${mem.username}"
				readonly="readonly" /></td>
			<td><input id="password" type="password" /></td>
			<td><input id="email" type="email" value="${mem.email}" /></td>
			<td><input type="text" value="${mem.createDate}"
				readonly="readonly" /></td>
		</tr>

	</table>
	<button id="mem_update_proc">수정하기</button>
	<button id="mem_delete_proc">삭제하기</button>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	
		//Update
		$('#mem_update_proc').on('click', function() {

			let data = {
				id : $('#id').val(),
				password : $('#password').val(),
				email : $('#email').val()
			};

			$.ajax({
				type : 'PUT',
				url : '/mem/api/update',
				data : JSON.stringify(data),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json'

			}).done(function(result) {
				if(result==='ok') {
					alert('회원정보 수정 성공');
					location.href = '/mem';
				}else { 
					alert('회원정보 수정 실패');
					}
			
			}).fail(function(result) {
				alert('서버 오류');
			});
		});
		//Delete
		$('#mem_delete_proc').on('click', function() {

			let id = $('#id').val();

			$.ajax({
				type : 'DELETE',
				url : '/mem/api/delete/'+id,
				dataType : 'text'

			}).done(function(result) {
				if(result==='ok') {
					alert('회원삭제 성공');
					location.href = '/mem';
				}else { 
					alert('회원삭제 실패');
					}
			
			}).fail(function(result) {
				alert('서버 오류');
			});
		});
	</script>
</body>
</html>

