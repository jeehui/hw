<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>총 게시글: ${count}개</div>
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<td>순번</td>
					<td>작성자</td>
					<td>제목</td>
					<td>작성일</td>
				</tr>
			</thead>
			<tbody>
		
				<c:if test="${empty boards}">
				<tr>
					<td colspan="4">게시물이 없습니다</td>
				</tr>
				</c:if>
				<c:if test="${not empty boards}">
				<c:forEach items="${boards}" var="b">
						<tr>
							<td>${b.no}</td>
							<td>${b.writer}</td>
							<td><a href="detail.do?no=${b.no}">${b.title}</a></td>
							<td>${b.created}</td>
						</tr>
				</c:forEach>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4">
					<input type="button" value="새글작성" onclick="location.href='addPage.do'">
					</td>
				</tr>
			</tfoot>		
		</table>
	
	</div>
</body>
</html>