<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeBoard</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous">
    

<!-- css 파일 적용 -->
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/forumtable.css">
<link rel="stylesheet" href="../css/underheader.css">
<link rel="stylesheet" href="../css/pagenation.css">

</head>

<!-- 헤더 파일 include -->
<%@ include file="../fragments/navigation.jspf"%>

<!-- body 시작점 -->
<body>
    
    <!-- 웹페이지 상단 헤더 아래 부분 -->
    <div id="underheader-div">
        <div class="container" id="underheadrcontainer">
            <h2 class="commondesign">
                FORUM
            </h2>
        </div>
    </div>
    
    <!-- main 시작점 -->
    <main>
    
    <!-- 게시판 카테고리(자유게시판, 후기게시판, 질문게시판) -->
    <div>
        <input type="text" />
    </div>
    
    <!-- 제목 또는 내용으로 검색하는 검색창 -->
    <div>
        
    </div>
    
    <!-- board-list-content 게시판 글 리스트 테이블 -->
    <section class="freeboard-list" style="padding: 3.5rem 18.5rem 2.5rem 18.5rem;">
     <table class="table">
        <colgroup>
            <col style="width: 8%;">
            <col>
            <col style="width: 10%;">
            <col style="width: 12%;">
            <col style="width: 10%;">
        </colgroup>
        <thead>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        <tr>
            <td>1</td>
            <td style="text-align: left">제목1</td>
            <td>작성자1</td>
            <td>2023-12-13</td>
            <td>1</td>
        </tr>
        </tbody>
    </table>
    </section>
        
    <!-- 게시판 글 페이지네이션(pagination)-->
        <div>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link-img" href="#" aria-label="first page">
                            <img id="pagination-img" alt="first page" src="../pagination/pagination01.png">
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link-img" href="#" aria-label="previous">
                            <img id="pagination-img" alt="previous page" src="../pagination/pagination02.png">
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link-img" href="#" aria-label="next">
                            <img id="pagination-img" alt="next page" src="../pagination/pagination03.png">
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link-img" href="#" aria-label="last page">
                            <img id="pagination-img" alt="last page" src="../pagination/pagination04.png">
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </main>
    
    <!-- 푸터 파일 include -->
    <%@ include file="../fragments/footer.jspf" %>
    
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script src="js/header.js"></script>

</body>
</html>