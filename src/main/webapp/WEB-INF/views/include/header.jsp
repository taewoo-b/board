<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>

<!-- 공통 CSS -->
<link rel="stylesheet" type="text/css" href="/css/common/common.css"/>
<!-- 공통 JavaScript -->
<script type="text/javascript" src="/js/common/jquery.js"></script>
<script type="text/javascript" src="/js/common/jquery.form.js"></script>
<!-- AJAX 업로드하는영역 CSS -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
    margin: 0; /*body의 바깥 여백을 없앰으로서 내비게이션 바가 페이지에 바짝 붙게 함*/
}

.nav-container {
    display: flex;
    flex-direction: row;
    width: 100%;
    margin: 0; /*쓸 데 없는 공백 제거*/
    padding: 0; /*쓸 데 없는 공백 제거*/
    background-color: lightseagreen;
    list-style-type: none; /*목록 기호 제거*/
    padding-left:50px; /* 왼쪽 공백 주기 */
}

.nav-item {
    padding: 15px;
    cursor: pointer; /*마우스 커서를 pointer 모양으로 함*/
    text-align: center;
    font-size:18pt; /* 메뉴바 글씨 크기 조절 */
}
.nav-item a { /*nav-item 클래스 아래의 a 요소를 선택함*/
    text-align: center;
    text-decoration: none; /*밑줄 없앰*/
    color: white;
    padding: 0 20px;
    display : block;
}
.nav-item:nth-child(1) {
    background-color: lightseagreen;
}
.nav-item:hover {
    background-color: white;
}


</style>
</head>

<body>

	<nav>
        <ul class="nav-container">
            <li class="nav-item"> <a href = '/'><img src='../img/macrogen.png' width="200px" height="100px"></a></li>
            <li class="nav-item"> <h2><a href ='/board/boardList'>게시판</a></h2> </li>
     	    <li class="nav-item"> <h2><a href ='/notice/noticeWrite'>공지 글 작성</a></h2> </li>
            <li class="nav-item"> <h2><a href ='/notice/noticeList'>공지 글 리스트</a></h2> </li>
        </ul>
    </nav>
   
</body>
</html>

