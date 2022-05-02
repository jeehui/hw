<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="modify.do" method="post">
		<table border="1">
			<tr>
				<td>순번</td>
				<td><input type="text" name="no" value="${board.no}"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${board.title}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" cols="30" rows="20">${board.content}</textarea></td>
			</tr>
			<tfoot>
				<tr>
					<td colspan="2">
						<button>수정</button>
						<input type="button" value="목록" onclick="location.href='list.do'">
						<input type="button" value="삭제" onclick="fnRemove()">
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
	
	<script>
		function  fnRemove() {
			if(confirm('정말 삭제하시겠습니까?')){
				
				location.href='remove.do?no=${board.no}';
			}
		}
	</script>
	
</body>
</html>