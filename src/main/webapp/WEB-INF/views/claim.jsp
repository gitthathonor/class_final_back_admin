<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="total_claim_info" class="form">
                    <div class="form_title">
                        <h2 class="title">권한 요청 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>번호</td>
                                <td>전문가 번호</td>
                                <td>전문가명</td>
                                <td>권한</td>
                                <td>권한 변경</td>
                                
                            </tr>
                            <c:forEach var="claim" items="${claimList}" varStatus="status">
                                <tr>
                                    <td>${claim.id}</td>
                                    <td>${claim.expert.id}</td>
                                    <td>${claim.expert.user.username}</td>
                                    <td>${claim.expert.approval}</td>
                                    <td><button class="btnChange" id="btnChange${status.index}" type="button" onclick="update(${claim.expert.id})">변경</button></td>
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

            function update(expertId) {

                console.log("업데이트");

                $.ajax("/expert/"+expertId+"/claim", {
                    type: "PUT",
                    headers: {
                        "Content-Type": "application/json; charset=utf-8",
            },
            }).done((res) => {
                    alert("수정 완료");
                    console.log(res);
                    location.reload();
            }) 
            .fail((res)=>{
                    alert("업데이트 실패")
                });
            };
        </script>
        </html>