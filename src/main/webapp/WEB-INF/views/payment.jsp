<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="payment_info" class="form">
                    <div class="form_title">
                        <h2 class="title">결제 타입 관리</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>번호</td>
                                <td>결제타입명</td>
                            </tr>
                            <c:forEach var="paymentList" items="${paymentList}">
                                <tr>
                                    <td>${paymentList.id}</td>
                                    <td>${paymentList.name}</td>
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

                <div id="payment_input_form" class="form">
                    <div class="form_title">
                        <h2 class="title">결제 타입 추가</h2>
                    </div>
                    <div class="form_table">
                        <div class="input_form">
                            <input id="payment_name" type="text" placeholder="결제타입">
                            <button id="btnSave" type="button">추가</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- #wrap -->
        </div>
        </body>
        <script>
            $("#btnSave").click(()=>{
                save();
            });

            function save(){
                let payment = $("#payment_name").val();

                $.ajax("/payment", {
                    type: "POST",
                    dataType: "json", 
                    data: JSON.stringify(payment), 
                    headers: { 
                        "Content-Type": "application/json"
                    }
                }).done((res) => {
                    alert("결제타입 추가 완료");
                    console.log(res);
                    location.reload();
            }) 
            .fail((res)=>{
                    alert("추가 실패")
                });
            };
        </script>
        </html>