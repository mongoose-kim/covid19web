<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>코로나19 의료시설 현황</title>
    <!-- Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23019901-1"></script>

    <!-- Bootstrap Core CSS -->
    <link href="../../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="../../resource/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resource/css/stylish-portfolio.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
          integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
          integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
          crossorigin=""/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/litera/bootstrap.min.css" integrity="sha384-enpDwFISL6M3ZGZ50Tjo8m65q06uLVnyvkFO3rsoW0UC15ATBFz3QEhr3hmxpYsn" crossorigin="anonymous">
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
            integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
            crossorigin=""></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="../../resource/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="../../resource/dist/MarkerCluster.Default.css" />
    <script src="../../resource/dist/leaflet.markercluster-src.js"></script>
    <style>
        #fixtable thead tr th{position: sticky; top: 0; background: white;
        }
        .legend i {
            width: 18px;
            height: 18px;
            float: left;
            margin-right: 4px;
            opacity: 0.7;
        }
        .leaflet-left .leaflet-control {
            margin-left: 10px;
        }
        .leaflet-left .leaflet-control {
            float: left;
        }
        .leaflet-bottom .leaflet-control {
            margin-bottom: 10px;
        }
        .leaflet-left {
            left: 0;
        }
        .legend {
            text-align: left;
            line-height: 18px;
            color: #555;
        }
        .info {
            padding: 6px 8px;
            font: 14px/16px Arial, Helvetica, sans-serif;
            background: white;
            background: rgba(255,255,255,0.8);
            box-shadow: 0 0 15px rgb(0 0 0 / 20%);
            border-radius: 5px;
        }

        .js-scroll-trigger{
            font-size: medium;
        }

    </style>
</head>
<body>
<section id="intro" class="clearfix" style="overflow-x: hidden;">
<div class="content">
<div id="page-top">

<script src="../../resource/js/indexpage.js"></script>
<script src="../../resource/js/map.js"></script>
<!-- Navigation -->
<div style="z-index: 9998;">
<a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars" style="margin-bottom: 3px;"></i>
</a>
<nav id="sidebar-wrapper" style="height: 100vh;">
    <ul class="sidebar-nav">
        <li class="sidebar-brand">
            <a class="js-scroll-trigger" href="#page-top" style="color: #1b1e21"><img src="../../resource/img/logo.png" width="27"/> 코로나19 의료시설</a>
        </li>
        <div style="margin-top:10px; padding-left: 7px; padding-right: 7px; font-size: 0.95rem;">
        <li class="sidebar-nav-item">
        <div style="margin-bottom:7px;">
            <button id="hosBtn" type="button" class="btn btn-outline-primary btn-block" style="margin-top:0.2rem;">국민안심병원
            </button>
            <button id="cliBtn" type="button" class="btn btn-outline-primary btn-block">호흡기전담클리닉
            </button>
            <button id="triBtn" type="button" class="btn btn-outline-primary btn-block">선별진료소
            </button>
            <button id="carBtn" type="button" class="btn btn-outline-primary btn-block">자동차선별진료소
            </button>
        </div>
            <div class="form-group" style="margin-bottom:2px;">
            <div id="select">
                <div style="margin-bottom:2px;">
                시도
                <select name="sido" id="sido1" class="custom-select" style="font-size: 0.95rem;">
                </select></div>
                시군구
                <select name="gungu" id="gugun1" class="custom-select" style="font-size: 0.95rem;"></select>
            </div>
            </div>
            <div class="form-group" style="margin-bottom:2px;">
        <div id="hostype">
            유형
            <select name="type" id="type" class="custom-select" style="font-size: 0.95rem;">
                <option>전체</option>
                <option value="A">외래진료</option>
                <option value="B">외래진료 및 입원</option>
            </select>
        </div>
        <div id="clitype">
            코로나 검사 가능 여부
            <select name="collect" id="collect" class="custom-select">
                <option>전체</option>
                <option value="○">가능</option>
                <option value="X">불가</option>
            </select>
        </div>
            </div>
        <div name="triopen" id="triopen"> 운영요일<br>
            <div style="padding-left: 3px;">
            <input type="checkbox" id="alltopen" name="topen" value="all">전체<br>
            <input type="checkbox" class="topen" value="openWd" onclick="checkSelectAllT()">평일<br>
            <input type="checkbox" class="topen" value="openSa" onclick="checkSelectAllT()">토요일<br>
            <input type="checkbox" class="topen" value="openSu" onclick="checkSelectAllT()">일요일/공휴일
            </div>
        </div>
        <div name="cliopen" id="cliopen" style="overflow-y: auto;"> 운영요일<br>
            <div style="padding-left: 3px; ">
            <input type="checkbox" id="allcopen" value="all">전체&nbsp;
            <input type="checkbox" class="copen" value="openMo" onclick="checkSelectAllC()" style="margin-left: 8px;">월요일<br>
            <input type="checkbox" class="copen" value="openTu" onclick="checkSelectAllC()">화요일
            <input type="checkbox" class="copen" value="openWe" onclick="checkSelectAllC()">수요일<br>
            <input type="checkbox" class="copen" value="openTh" onclick="checkSelectAllC()">목요일
            <input type="checkbox" class="copen" value="openFr" onclick="checkSelectAllC()">금요일<br>
            <input type="checkbox" class="copen" value="openSa" onclick="checkSelectAllC()">토요일
            <input type="checkbox" class="copen" value="openSu" onclick="checkSelectAllC()">일요일/공휴일
            </div>
        </div>
            <div style="padding-top: 5px;">
        <button class="btn btn-dark my-2 my-sm-0 btn-block" id="searchBtn">Search</button>
            </div>
            </div>
        </li>
    </ul>
</nav>
</div>
</div>
<!-- Map -->
<!-- Header -->
    <div class="container-fluid">
    <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6" style="margin-top: 20px;" id="mapdiv">
        <div id="mapid">
            <div id="hospital-info">
                <div class="leaflet-control-container">
                    <div class="leaflet-bottom leaflet-left">
                        <div class="info legend leaflet-control">
                            유형<br><br>
                            <i style="background:#FA5858"></i>외래진료 <br><br>
                            <i style="background:#8904B1"></i>외래진료 및 입원 <br>
                        </div>
                    </div>
                </div>
            </div>
            <div id="clinic-info">
                <div class="leaflet-control-container">
                    <div class="leaflet-bottom leaflet-left">
                        <div class="info legend leaflet-control">
                            유형<br><br>
                            <i style="background:#FA5858"></i>코로나 검사 가능 <br><br>
                            <i style="background:#8904B1"></i>코로나 검사 불가 <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6">
    <div class="text-center" style="margin: 0px auto;">
        <div style="padding-bottom: 20px;">
        <div class="wrap" ></div>
        </div>
    </div>
        <div id="toast" class="toast show" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false" style="max-width: 100%; margin-bottom: 20px; margin-top: 10px;">
            <div class="toast-header">
                <strong class="mr-auto">- 안내 -</strong>
<%--                <button id="toastBtn" type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
            </div>
            <div class="toast-body">
                &#x1F4CC '국민안심병원'은 병원 내 감염으로부터 환자를 안전하게 보호하기 위하여 호흡기 환자와 비(非)호흡기 환자를 분리하여 진료하는 곳입니다.<br>
                &#x1F4CC '호흡기전담클리닉'은 감염으로부터 안전한 환경을 갖추고 발열 또는 호흡기 증상의 환자를 진료하는 곳입니다.<br>
                &#x1F4CC '선별진료소'는 코로나19가 의심되거나 역학적 연관성이 있는 사람에게 코로나19 검사를 실시하는 곳입니다.
            </div>
        </div>
            <nav class="main-nav float-right d-none d-lg-block">
                <ul>
                    <li><a href="http://www.mohw.go.kr/" target="_blank">보건복지부 홈페이지</a></li>
                    <li><a href="http://ncov.mohw.go.kr/" target="_blank">코로나19 감염증 사이트</a></li>
                    <li><a href="https://ncv.kdca.go.kr/" target="_blank">백신접종 사이트</a></li>
                </ul>
            </nav>
    </div>
</div>
</div>


<!-- Bootstrap core JavaScript -->
<script src="../../resource/vendor/jquery/jquery.min.js"></script>
<script src="../../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../../resource/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="../../resource/js/stylish-portfolio.min.js"></script>
</div>
</section>
</body>

</html>
