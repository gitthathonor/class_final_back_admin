<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>

        <div id="main_wrap">
            <div class="main_page">
                <div id="category_info" class="form">
                    <div class="form_title">
                        <h2 class="title">카테고리 리스트</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>번호</td>
                                <td>카테고리명</td>
                            </tr>
                            <c:forEach var="categoryList" items="${categoryList}">
                                <tr>
                                    <td>${categoryList.id}</td>
                                    <td>${categoryList.name}</td>
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

                <div id="category_input_form" class="form">
                    <div class="form_title">
                        <h2 class="title">카테고리 추가</h2>
                    </div>
                    <div class="form_table">
                        <div class="input_form">
                            <input type="text" placeholder="카테고리">
                            <button>추가</button>
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