<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="notice_info" class="form">
                    <div class="form_title">
                        <h2 class="title">최근 등록한 공지 내역</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>공지명</td>
                                <td>내용</td>
                            </tr>
                            <tr>
                                <td>안녕하세요</td>
                                <td>서버 점검</td>
                            </tr>
                            <tr>
                                <td>안녕하세요</td>
                                <td>서버 점검</td>
                            </tr>
                            <tr>
                                <td>안녕하세요</td>
                                <td>서버 점검</td>
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

                <div id="notice_input" class="form">
                    <div class="form_title">
                        <h2 class="title">공지 추가</h2>
                        <input type="text" value="" placeholder="공지명">
                        <input type="text" value="" placeholder="공지 내용">
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