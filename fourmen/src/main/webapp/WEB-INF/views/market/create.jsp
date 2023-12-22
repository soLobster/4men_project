<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
		 crossorigin="anonymous">
        <link rel="stylesheet" href="/fourmen/css/header.css">
        <link rel="stylesheet" href="/fourmen/css/footer.css">
		
	</head>
	<body>
        <%@ include file="../fragments/navigation.jspf" %>
        <div class="container w-75 my-4">
		  <h1 class="h1">장터 글 작성</h1>
        </div>
        <!-- 일단 CSS파일을 만들었는데 그냥 post.css나 나중에 하나로 통일해도 될 듯.. -->
        <div id="market-create-container" class="container w-75">
            <div class="justify-content-center">
                <form action="/fourmen/market/create" method="post" enctype="multipart/form-data" id="market-post-create-form">
                    <label class="mb-2">제목: </label>
                    <input type="text" name="title" class="form-control mb-3" placeholder="제목" autofocus>
                    <div class="my-2">
                        <span class="market-upload-photos">
                            <label>사진 첨부:</label><br>
                            <input type="file" name="files" class="files">                            
                        </span>
                        <!-- +누를때마다 파일첨부 하나씩 추가.. 최대 20개 -->
                        <button class="market-create-add-phooto" type="button">+</button><br>
                        
                    </div>
                    <textarea name="description"  class="form-control my-2" rows="20" placeholder="내용"></textarea>
                    <label>가격:</label>
                    <input type="number" name="price" class="form-control mb-2">
                    <label>창작 연도:</label>
                    <input type="number" name="yearCreated" class="form-control mb-2"/>
                    <label>작품 사이즈:</label><br>
                    <div class="mb-2">
                        폭: <input type="number" name="width"> cm 높이: <input type="number" name="height"> cm 두께: <input type="number" name="depth"> cm<br>
                    </div>
                    <!-- TODO: 유저아이디 일단 적는데 나중에 지울거임 -->
                    <label>유저아이디:</label>
                    <input type="text" name="userId" class="form-control mb-2">
                    
                    <button class="market-create-cancel btn btn-outline-secondary" type="button">취소</button>
                    <button id="btn-market-create-submit" type="button" class="btn btn-outline-success">작성</button>
                    
                </form>
                
            </div>
		</div>
        
        <%@ include file="../fragments/footer.jspf" %>
         
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		  integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		   crossorigin="anonymous"></script>
        <script src="../js/market/market-create.js"></script>
		
	</body>
	</html>