<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="notice.Notice" %>
<%@ page import="notice.NoticeDAO" %>

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
        <!--<link href="${pageContext.request.contextPath}/css/view_design.css" rel="stylesheet" type="text/css">-->
    	<link href="./css/view_design.css" rel="stylesheet" type="text/css">
        <title>BE FREE</title>
    </head>
    <body>
        <% // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
			String userID = null;
			if(session.getAttribute("userID") != null){
				userID = (String)session.getAttribute("userID");
			}
			
			// QID를 초기화시키고 'QID'라는 데이터가 넘어온 것이 존재한다면 캐스팅을 하여 변수에 담는다.
			int NID = 0;
			if(request.getParameter("NID") != null){
				NID = Integer.parseInt(request.getParameter("NID"));
			}
			
			// 만약 넘어온 데이터가 없다면
			if(NID == 0){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('유효하지 않은 글입니다.')");
				script.println("location.href='notice.jsp'");
				script.println("</script>");
			}
			
			// 유효한 글이라면 구체적인 정보를 'QA'라는 인스턴스에 담는다
			Notice notice = new NoticeDAO().getNotice(NID);
			
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
                           	공지사항
                        </div>
                    </div>
                </header>
            </div>
            
            <div class="se">
                <section>
                    <div class="item_list">
	                        <table>
	                            <tr>
	                            	<td class="t1">글 제목</td>
	                            	<td colspan="2" class="td"><%= notice.getNTITLE().replaceAll(" ", "&nbsp;")
		                            		.replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	                            </tr>
	                            <tr>
	                            	<td class="t2">작성자</td>
	                            	<td colspan="2" class="td"><%= notice.getUserID() %></td>
	                            </tr>
	                            <tr>
	                            	<td class="t1">작성일자</td>
	                            	<td colspan="2" class="td"><%= notice.getNDATE().substring(0, 11) + notice.getNDATE().substring(11, 13) + ":" 
		                            		+ notice.getNDATE().substring(14, 16)  %></td>
	                            </tr>
                                <tr>
	                            	<td colspan="2" class="content"><%= notice.getNCONTENT().replaceAll(" ", "&nbsp;")
		                            		.replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
                                </tr>
	                   </table>
                            <div class="notice_check">
                                <button class="custom-btn btn-5" onclick="location.href='notice.jsp'"><span><a id="btn">목록</a></span></button>
                                <!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
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