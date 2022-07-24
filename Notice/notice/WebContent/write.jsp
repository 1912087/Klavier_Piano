<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
        <!--<link href="${pageContext.request.contextPath}/css/write_design.css" rel="stylesheet" type="text/css">-->
    	<link href="./css/write_design.css" rel="stylesheet" type="text/css">
        <title>BE FREE</title>
    </head>
    <body>
        <% // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
			String userID = null;
			if(session.getAttribute("userID") != null){
				userID = (String)session.getAttribute("userID");
			}
		%>
        <div class="all">
            <div class="main">
                <header>
                    <div class="name">
                    </div>
    
					<%
						// 로그인 하지 않았을 때 보여지는 화면
						if(userID == null){
					%>
                            <ul class="login">
                                <li><a href="login.jsp">로그인</a></li> &nbsp;
                                <li><a href="clause.jsp">회원가입</a></li>
                            </ul>
                    <%
						// 로그인이 되어 있는 상태에서 보여주는 화면
						}else{
					%>    
                            <ul class="login">
                                <li><a href="logoutAction.jsp">로그아웃</a></li> &nbsp;
                                <li><a href="main.jsp">회원관리</a></li>
                            </ul>
                    <%
						}
					%>
                
                    <nav>
                        <div class="title_menu">
                            <a href="main.jsp"><img class="logo" src="images/BE_FREE.png"></a>
                            <ul id="main-menu">
                                <li><a href="회사소개.html">BE FREE란</a></li>
                                <li><a href="#">관광지</a></li>
                                <li><a href="#">추천여행지</a>
                                    <ul id="sub-menu">
                                        <li><a href="문의하기.html">추천여행지</a></li>
                                        <li><a href="공지사항.html">추천여행일정</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">일정만들기</a></li>
                                <li><a href="#">게시판</a>
                                    <ul id="sub-menu">
                                        <li><a href="공지사항.html">공지사항</a></li>
                                        <li><a href="Q&A.jsp">Q&A</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">나의 저장소</a>
                                    <ul id="sub-menu">
                                        <li><a href="나의찜목록.html">나의 찜 목록</a></li>
                                        <li><a href="나의여행일정.html">나의 여행 일정</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="hd">
                        <div class="ment">
                          Q&A
                        </div>
                    </div>
                </header>
            </div>
            
            <div class="se">
                <section>
                    <div class="item_list">
                        <p class="write">글쓰기</p>
                        <form method="post" action="writeAction.jsp">
	                        <table>
	                            <tr><th>제목</th><td><input type="text" name="QTITLE" size="50"></td></tr>
	                            <tr><th>내용</th><td><textarea cols="90" rows="20" name="QCONTENT" placeholder="내용을 적으시오."></textarea></td></tr>
	                        </table>
	                        <div class="notice_check">
	                        <button class="custom-btn btn-5"><span><a id="btn">확인</a></span></button>
	                        <button type="reset" class="custom-btn btn-5" onclick="location.href='notice.jsp'"><span><a id="btn">취소</a></span></button>
	                        </div>
                        </form>
                        
                    </div>
                </section>
            
	            <footer>
	                <p style="padding: 25px 0px 0px 0px;">전화 : 031-720-2114</p>
	                <p>주소 : 경기도 성남시 수정구 복정로 76</p>
	            </footer>
            </div>
        </div>
    </body>
</html>