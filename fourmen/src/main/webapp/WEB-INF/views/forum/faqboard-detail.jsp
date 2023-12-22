<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fourmen</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous">

<!-- css 파일 적용 -->
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/forum-table.css">
<link rel="stylesheet" href="../css/underheader.css">
<link rel="stylesheet" href="../css/pagenation.css">
<link rel="stylesheet" href="../css/forum-search-area.css">
<link rel="stylesheet" href="../css/forum-kategorie-area.css">
<link rel="stylesheet" href="../css/forum-create-new-post.css">
<link rel="stylesheet" href="../css/forum-freeboard-detail.css">

<!-- 헤더 파일 include -->
<%@ include file="../fragments/navigation.jspf"%>

</head>

<!-- body 시작점 -->
<body>
    
    <!-- 웹페이지 상단 헤더 아래 부분 -->
    <div id="underheader-div">
        <div class="container" id="underheadrcontainer">
            <h2 class="commondesign">
                자유게시판
            </h2>
        </div>
    </div>
    
    <!-- main 시작점 -->
    <main>
    
    <section role="freeboard-view"> <!-- 게시글이 보이는 부분... -->
        <div class="freeboard-view-detail"> <!-- 제목 / 작성정보 / 내용을 묶는 div -->
            <div class="freeboard-view-detail-title">
                ${faq.faq_title}
            </div>
            <div class="d-none"> <!-- 게시글 고유 아이디를 보이지 않게 가림 -->
                <input id="faq_id" name="faq_id" value="${faq.faq_id}">
            </div>
            <ul class="freeboard-view-detail-info">
                <li>
                    <label class="freeboard-view-detail-info-label">작성일</label>
                    <input id="freeboard-view-detail-createdTime" value="${faq.faq_created_time}" type="text" readonly="readonly">
                </li>
                <li>
                    <label class="freeboard-view-detail-info-label">작성자</label>
                    <input id="freeboard-view-detail-userId"  value="${faq.userid}" type="text" readonly="readonly">
                </li>
                <li>
                    <label class="freeboard-view-detail-info-label">조회</label>
                    <input id="freeboard-view-detail-view" value="${faq.faq_view_count}" type="number" readonly="readonly">
                </li>
                <li>
                    <label class="freeboard-view-detail-info-label">댓글</label>
                    <input id="freeboard-view-detail-comment" value="1" type="number" readonly="readonly">
                </li>
            </ul>
            <div>
                <button id="freeboard-modify">수정</button>
                <button id="freeboard-delete">삭제</button>
            </div>
            <div class="freeboard-view-detail-content">
                <!-- <input class="freeboard-view-detail-content-input" type="text" value="${faq.faq_content}"> -->
                ${faq.faq_content}
            </div>
        </div>
        <div class="freeboard-view-list-button">
            <button id="freeboard-view-btnList" type="button">
                목록
            </button>
        </div>
    </section>
    
    </main>
    
    <!-- 푸터 파일 include -->
    <%@ include file="../fragments/footer.jspf" %>
    
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script src="../js/header.js"></script>
    <script src="../js/freeboard-detail.js"></script>

</body>
</html>