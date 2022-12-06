<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="user_info" class="form">
                    <div class="form_title">
                        <h2 class="title">주문 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>강의명</td>
                                <td>가격</td>
                                <td>수량</td>
                                <td>유저명</td>
                            </tr>
                            <tr>
                                <td>강의1</td>
                                <td>10000</td>
                                <td>2</td>
                                <td>ssar</td>
                            </tr>
                            <tr>
                                <td>강의1</td>
                                <td>10000</td>
                                <td>2</td>
                                <td>ssar</td>
                            </tr>
                            <tr>
                                <td>강의1</td>
                                <td>10000</td>
                                <td>2</td>
                                <td>ssar</td>
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
            </div>



        </div>
        </div>
        <!-- #wrap -->

        <script src="/js/main.js"></script>
        </div>
        </body>

        </html>