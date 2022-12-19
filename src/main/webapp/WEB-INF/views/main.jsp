<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="user_info" class="form">
                    <div class="form_title">
                        <h2 class="title">최근 가입한 유저 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>연락처</td>
                                <td>이메일</td>
                                <td>role</td>
                                <td>가입일</td>
                            </tr>
                            <c:forEach var="userList" items="${userList}">
                                <tr>
                                    <td>${userList.username}</td>
                                    <td>${userList.phoneNum}</td>
                                    <td>${userList.email}</td>
                                    <td>${userList.role}</td>
                                    <td>${userList.createdAt}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                 
                </div>
                <div id="class_info" class="form">
                    <div class="form_title">
                        <h2 class="title">최근 등록된 클래스</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>강의명</td>
                                <td>강사명</td>
                                <td>가격</td>
                                <td>종료일</td>
                            </tr>
                            <c:forEach var="lessonList" items="${lessonList}">
                                <tr>
                                    <td>${lessonList.name}</td>
                                    <td>${lessonList.user.username}</td>
                                    <td>${lessonList.price}</td>
                                    <td>${lessonList.expiredAt}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                 
                </div>
                <div id="order_info" class="form">
                    <div class="form_title">
                        <h2 class="title">최근 주문 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>강의명</td>
                                <td>결제 시간</td>
                                <td>수량</td>
                                <td>총 가격</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>강의1</td>
                                <td>2022-12-01 08:30:00</td>
                                <td>1</td>
                                <td>10000원</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>강의1</td>
                                <td>2022-12-01 08:30:00</td>
                                <td>1</td>
                                <td>10000원</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>강의1</td>
                                <td>2022-12-01 08:30:00</td>
                                <td>1</td>
                                <td>10000원</td>
                            </tr>
                        </table>
                    </div>
                   
                </div>
            </div>



        </div>
        </div>
        <!-- #wrap -->

        <script src="/js/main.js"></script>
        </div>
        </body>

        </html>