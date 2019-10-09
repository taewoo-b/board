<%@ include file="../include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>글쓰기</title>
</head>
<body>

<div id="root">
 <header>
 </header>

<hr />
 
 <div>
  처음화면 - 글쓰기 - 로그인
 </div>

<hr />


 
  <form role="form" method="post" autocomplete="off">
   <p>
    <label for="title">글 제목</label><input type="text" id="notice_title" name="notice_title" />
   </p>
   <p>
    <label for="content">글 내용</label><textarea id="notice_content" name="notice_content"></textarea>
   </p>
   <p>
    <label for="writer">작성자</label><input type="text" id="notice_writer" name="notice_writer" />
   </p>
   <p>
    <button type="submit">작성</button>
   </p>  
  </form>


<hr />


</div>

</body>
</html>