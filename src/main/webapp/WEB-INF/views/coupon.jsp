<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="coupon_info" class="form">
                    <div class="form_title">
                        <h2 class="title">쿠폰 리스트</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>쿠폰명</td>
                                <td>기간</td>
                                <td>할인가격</td>
                            </tr>
                            <tr>
                                <td>회원가입</td>
                                <td>2022-12-11</td>
                                <td>10000원</td>
                            </tr>
                            <tr>
                                <td>회원가입</td>
                                <td>2022-12-11</td>
                                <td>10000원</td>
                            </tr>
                            <tr>
                                <td>회원가입</td>
                                <td>2022-12-11</td>
                                <td>10000원</td>
                            </tr>
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
                <div id="coupon_input" class="form">
                    <div class="form_title">
                        <h2 class="title">쿠폰 추가</h2>
                        <input type="text" value="" placeholder="쿠폰명">
                        <input type="text" value="" placeholder="기간">
                        <input type="text" value="" placeholder="할인가격">
                        <button>추가</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- #wrap -->

        <script src="/js/main.js"></script>
        </div>
        </body>

        </html>