<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
            <link rel="stylesheet" href="/css/reset.css" />
            <link rel="stylesheet" href="/css/main.css" />
            <link rel="stylesheet" href="/css/visualize.css" />
            <script type="text/javascript"
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script>
            <script type="text/javascript" src="/js/visualize.jQuery.js"></script>

            <title>hobbyUp</title>
        </head>

        <body>

            <div id="admin_wrap">
                <div class="header_wrap">
                    <header>
                        <div class="logo">
                            <a href="/">hobbyUp</a>
                        </div>
                        <div class="header_box">
                            <a href="/" class="btn_header" type="button">사이트 가기</a>
                            <a href="/" class="btn_header" type="button">로그아웃</a>
                        </div>
                    </header>
                </div>
                <!-- header_box -->

                <div class="admin_page">
                    <ul class="admin_left">

                        <!-- <li class="admin_list1">
                            <a href="/api/admin/statistics">
                                <i class="fa-solid fa-chart-simple"></i>
                                <span class="txt">통계</span>
                            </a>
                        </li> -->
                        <li class="admin_list2">
                            <a href="/user_info">
                                <i class="fa-regular fa-user"></i>
                                <span class="txt">고객 정보</span>
                            </a>
                        </li>
                        <li class="admin_list3">
                            <a href="/class">
                                <i class="fa-solid fa-blackboard"></i>
                                <span class="txt">클래스 리스트</span>
                            </a>
                        </li>
                        <li class="admin_list4">
                            <a href="/category">
                                <i class="fa-solid fa-list"></i>
                                <span class="txt">클래스 카테고리 관리</span>
                            </a>
                        </li>
                        <li class="admin_list5">
                            <a href="/claim">
                                <i class="fa-solid fa-check"></i>
                                <span class="txt">권한요청</span>
                            </a>
                        </li>
                        <li class="admin_list6">

                            <a href="/order">
                                <i class="fa-solid fa-clipboard-list"></i>
                                <span class="txt">주문 관리</span>
                            </a>
                        </li>
                        <li class="admin_list7">

                            <a href="/payment">
                                <i class="fa-solid fa-file-invoice-dollar"></i>
                                <span class="txt">결제 타입 관리</span>
                            </a>
                        </li>
                        <!-- <li class="admin_list8">
                            <a href="/api/admin/inquire">
                                <i class="fa-solid fa-headphones"></i>
                                <span class="txt">고객문의</span>
                            </a>
                        </li>
                        <li class="admin_list9">
                            <a href="/api/admin/notice">

                                <i class="fa-regular fa-bell"></i>
                                <span class="txt">공지 등록</span>
                            </a>
                        </li>
                        <li class="admin_list10">
                            <a href="/api/admin/coupon">
                                <i class="fa-solid fa-ticket-simple"></i>
                                <span class="txt">쿠폰 관리</span>
                            </a>
                        </li> -->

                    </ul>
                </div><!-- .admin_page -->