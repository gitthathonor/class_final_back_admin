<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <script type="text/javascript" src="/js/main.js"></script>
    <script
      type="text/javascript"
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    ></script>
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
        <li class="admin_list1">
            <a href="/#">
              <i class="fa-solid fa-chart-simple"></i>
              <span class="txt">통계</span>
            </a>
        </li>
        <li class="admin_list2">
            <a href="/#">
              <i class="fa-regular fa-user"></i>
              <span class="txt">고객 정보</span>
            </a>
        </li>
        <li class="admin_list3">
          <a href="/#">
            <i class="fa-solid fa-blackboard"></i>
              <span class="txt">클래스 리스트</span>
          </a>
        </li>
        <li class="admin_list4">
          <a href="/#">
            <i class="fa-solid fa-list"></i>
            <span class="txt">클래스 카테고리 관리</span>
          </a>
      </li>
      <li class="admin_list5">
        <a href="/#">
          <i class="fa-solid fa-file"></i>
            <span class="txt">주문 관리</span>
        </a>
      </li>
      <li class="admin_list6">
        <a href="/#">
          <i class="fa-solid fa-receipt"></i>
            <span class="txt">결제 리스트</span>
        </a>
      </li>
      <li class="admin_list7">
        <a href="/#">
          <i class="fa-solid fa-headphones"></i>
            <span class="txt">고객문의</span>
        </a>
      </li>
      <li class="admin_list8">
        <a href="/#">
          <i class="fa-regular fa-bell"></i>
            <span class="txt">공지 등록</span>
        </a>
      </li>
    </ul>
  </div><!-- .gnb_mypage -->

