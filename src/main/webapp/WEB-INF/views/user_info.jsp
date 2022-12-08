<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="total_user_info" class="form">
                    <div class="form_title">
                        <h2 class="title">전체 유저 내역</h2>
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
                    <!-- 페이징 나중에 -->
                    <div class="paging">
                        <ul class="pagination">
                            <li class="page-item page-prev">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item page-next">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="total_profile_info" class="form">
                    <div class="form_title">
                        <h2 class="title">전체 프로필 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>지역</td>
                                <td>경력기간</td>
                                <td>경력</td>
                                <td>등록일</td>
                                <td>role 변경</td>
                            </tr>
                            <c:forEach var="profileList" items="${profileList}">
                                <tr>
                                    <td>${profileList.user.username}</td>
                                    <td>${profileList.region}</td>
                                    <td>${profileList.careerYear}</td>
                                    <td>${profileList.career}</td>
                                    <td>${profileList.createdAt}</td>
                                    <td><button id="btnRoleChange" value="${profileList.user.id}" type="button" onclick="alert('role이 변경되었습니다.')">변경</button></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <!-- 페이징 나중에 -->
                    <div class="paging">
                        <ul class="pagination">
                            <li class="page-item page-prev">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item page-next">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="delete_user_info" class="form">
                    <div class="form_title">
                        <h2 class="title">탈퇴한 유저 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>연락처</td>
                                <td>이메일</td>
                                <td>role</td>
                                <td>탈퇴일</td>
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
                    <!-- 페이징 나중에 -->
                    <div class="paging">
                        <ul class="pagination">
                            <li class="page-item page-prev">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item page-next">
                                <a class="page-link" href="#">
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        </div>
        <!-- #wrap -->
        </div>
        </body>
        <script>
            $("#btnRoleChange").click(() => {
                updateRole();
            });

            function updateRole() {
                let userId = $("#btnRoleChange").val();

                console.log("업데이트");

                $.ajax("/user/"+userId+"/role", {
                    type: "PUT",
                    headers: {
                        "Content-Type": "application/json; charset=utf-8",
            },
            }).done((res) => {
                    alert("role 수정 완료");
                    console.log(res);
                    location.reload();
            }) 
            .fail((res)=>{
                    alert("업데이트 실패")
                });
            };
        </script>
        </html>