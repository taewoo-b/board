<%@ include file="../include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>kuzuro 게시판</title>
</head>
<body>
<div id="root">
		<h2>글 목록</h2>
		
		<table>
			<tr><th>글 번호</th><th>글 제목</th><th>작성자</th><th>글 내용</th></tr>	
			<!-- 목록 시작 -->
			<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.notice_seq}</td>
				<td><a href="/board/noticeDetail?bno=${list.notice_seq}">${list.notice_title}</a></td>
				<td>${list.notice_writer}</td>
				<td>${list.notice_content }</td>
 				<%-- <td><fmt:formatDate value="${list.notice_content}" pattern="yyyy-MM-dd" /></td> --%>
			</tr>
			</c:forEach>
			<!-- 목록 끝 -->
		</table>
	</>
</div>
</body>
</html>