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
                            <tr>
                                <td>1</td>
                                <td>운동</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>ssar</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>cos</td>
                            </tr>
                            <tr>
                                <td>4</td>
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
                <div id="interest_info" class="form">
                    <div class="form_title">
                        <h2 class="title">관심분야 리스트</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <div class="form_table">
                                <table>
                                    <tr>
                                        <td>1</td>
                                        <td>운동</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>ssar</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>cos</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
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
                <div id="category_input" class="form">
                    <div class="form_title">
                        <h2 class="title">카테고리 추가</h2>
                        <input type="text" value="" placeholder="카테고리">
                        <button>추가</button>
                        <h2 class="title">관심분야 추가</h2>
                        <input type="text" value="" placeholder="관심분야">
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