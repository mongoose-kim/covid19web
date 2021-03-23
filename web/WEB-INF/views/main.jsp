<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <title>Covid &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



  <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@400;700;900&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="../../resource/fonts/icomoon/style.css">

  <link rel="stylesheet" href="../../resource/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../resource/css/jquery-ui.css">
  <link rel="stylesheet" href="../../resource/css/owl.carousel.min.css">
  <link rel="stylesheet" href="../../resource/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../../resource/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="../../resource/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="../../resource/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="../../resource/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="../../resource/fonts/flaticon-covid/font/flaticon.css">

  <link rel="stylesheet" href="../../resource/css/aos.css">

  <link rel="stylesheet" href="../../resource/css/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
    $('document').ready(function() {
      var area0 = ["전체","서울","인천","대전","광주","대구","울산","부산","경기","강원","충북","충남","전북","전남","경북","경남","제주"];
      var area1 = ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
      var area2 = ["전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
      var area3 = ["전체","대덕구","동구","서구","유성구","중구"];
      var area4 = ["전체","광산구","남구","동구",    "북구","서구"];
      var area5 = ["전체","남구","달서구","동구","북구","서구","수성구","중구","달성군"];
      var area6 = ["전체","남구","동구","북구","중구","울주군"];
      var area7 = ["전체","강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
      var area8 = ["전체","고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
      var area9 = ["전체","강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
      var area10 = ["전체","제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
      var area11 = ["전체","계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
      var area12 = ["전체","군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
      var area13 = ["전체","광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
      var area14 = ["전체","경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
      var area15 = ["전체","거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
      var area16 = ["전체","서귀포시","제주시","남제주군","북제주군"];

      $.each(area0,function(){
        $("#sido1").append("<option value='"+this+"'>"+this+"</option>");
      });
      $("#gugun1").append("<option value=''>구/군 선택</option>");
      $("#sido1").change(function(){
        var idx = $('option:selected',$(this)).index();
        $("option",$("#gugun1")).remove();
        if(idx==0){
          $("#gugun1").append("<option value=''>구/군 선택</option>");
        }else{
          $.each(eval("area"+idx),function(){
            $("#gugun1").append("<option value='"+this+"'>"+this+"</option>");
          });
        }
      });
    });
  </script>
  <script type="text/javascript">
    var category = 0;
    $(document).ready(function(){
      $('#hosBtn').on('click', function(){
        category = 1;
        changeCate(1);
      });
    });

    $(document).ready(function(){
      $('#cliBtn').on('click', function(){
        category = 2;
        changeCate(category);
      });
    });

    $(document).ready(function(){
      $('#triBtn').on('click', function(){
        category = 3;
        changeCate(category);
      });
    });

    $(document).ready(function(){
      $('#carBtn').on('click', function(){
        category = 4;
        changeCate(category);
      });
    });

    $(document).ready(function(){
      $('#searchBtn').on('click', function(){
        var params = "?sido=" + $("#sido1 option:selected").val() +
                "&gungu=" + $("#gugun1 option:selected").val();
        var cate;
        if(category == 1){cate = "hos";}
        else if(category == 2){cate = "cli";}
        else if(category == 3){cate = "tri";}
        else if(category == 4){cate = "car";}
        $.ajax({
          url: "co/" + cate + params,
          type: "GET",
          contentType: "application/json; charset=utf-8;",
          dataType: "json",
          async:false,
          success: function(data){
            resultHtml(data);
          },
          error: function(){
            alert("카테고리를 선택해주세요.");
          }
        });
      });
    });

    function setClassName(id) {
        document.getElementById('hosBtn').className = 'btn btn-outline-primary';
        document.getElementById('cliBtn').className = 'btn btn-outline-primary';
        document.getElementById('triBtn').className = 'btn btn-outline-primary';
        document.getElementById('carBtn').className = 'btn btn-outline-primary';

        document.getElementById(id).className = 'btn btn-outline-primary active';
    }

    function changeCate(c){
      $("#sido1 option:eq(0)").prop("selected", true);
      var idx = $('option:selected',$(this)).index();
      $("option",$("#gugun1")).remove();
      $("#gugun1").append("<option value=''>구/군 선택</option>");

      var params = "?sido=전체";

      if(c == 1){
        setClassName('hosBtn');
        cate = "hos";}
      else if(c == 2){
        setClassName('cliBtn');
        cate = "cli";}
      else if(c == 3){
        setClassName('triBtn');
        cate = "tri";}
      else if(c == 4){
        setClassName('carBtn');
        cate = "car";}

      $.ajax({
        url: "co/" + cate + params,
        type: "GET",
        contentType: "application/json; charset=utf-8;",
        dataType: "json",
        async:false,
        success: function(data){
          resultHtml(data);
        },
        error: function(){
          alert("Error");
        }
      });
    }

    function resultHtml(data){
      $(".wrap").empty();
      var result = '';
      result += '<h3 class="mb-3 side-title">' + data.result[0] + ' ' + data.result[1] + ' '
      result += '검색결과입니다.</h3> <br>'
      if(data.list[0] == null){
        result += '<br> 조회된 결과가 없습니다.   <br>'
      }
      else {
        result += '<div style="overflow:auto; width:780px; height:350px;">'
        result += '<table class="table table-hover">'
        result += '<thead><tr><th>이름</th><th>시도</th><th>시군구</th><th>전화번호</th></tr></thead>'
        result += '<tbody>'
        $.each(data.list, function (index, item) {
          result += '<tr class="table-light">'
          result += '<th scope="row">' + item.name + '</th>';
          result += '<td> ' + item.sido + '</td>';
          result += '<td> ' + item.gungu + '</td>';
          result += '<td> ' + item.tel + '</td>';
          result += '</tr>'
        });
        result += '</tbody>'
        result += '</table>'
        result += '</div>'
      }
      $(".wrap").append(result);
    }

  </script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


<div id="overlayer"></div>
<div class="loader">
  <div class="spinner-border text-primary" role="status">
    <span class="sr-only">Loading...</span>
  </div>
</div>


<div class="site-wrap">

  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close mt-3">
        <span class="icon-close2 js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>


  <header class="site-navbar light js-sticky-header site-navbar-target" role="banner">

    <div class="container">
      <div class="row align-items-center">
          <nav class="site-navigation position-relative text-center" role="navigation">

            <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
              <li><a href="index.html" class="nav-link">코로나19 의료기관 안내</a></li>
            </ul>
          </nav>


      </div>
    </div>

  </header>




  <div class="hero-v1">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-lg-12 text-center mx-auto">
          <span class="d-block subheading">COVID 19</span>
          <h1 class="heading mb-3">전국 코로나 의료기관 현황</h1>
          <div>
            <button id="hosBtn" type="button" class="btn btn-outline-primary">국민안심병원
            </button>
            <button id="cliBtn" type="button" class="btn btn-outline-primary">호흡기전담클리닉
            </button>
            <button id="triBtn" type="button" class="btn btn-outline-primary">선별진료소
            </button>
            <button id="carBtn" type="button" class="btn btn-outline-primary">자동차선별진료소
            </button>
          </div>
          <br>

          <select name="sido" id="sido1">
          </select>
          <select name="gungu" id="gugun1"></select>
          <br>
          <button class="btn btn-dark my-2 my-sm-0" id="searchBtn">Search</button>
        </div>

      </div>
    </div>
  </div>


  <!-- MAIN -->

  <div class="site-section">
      <div class="row">
        <div class="col-lg-3 mx-auto">
          <div class="wrap"></div>
        </div>
        <div class="col-lg-3 mx-auto">
          <h3 class="mb-3 side-title">상세정보</h3><br>
          <div class="quick-contact">
            <div class="d-flex">
                <div class="do ">
                  <ul class="list-unstyled check">
                    <li>오늘 운영</li>
                  </ul>
                </div>
                <div class="dont ">
                  <ul class="list-unstyled cross">
                    <li>미운영</li>
                  </ul>
                </div>
            </div>
            <div class="d-flex">
              <span class="icon-room"></span>
              <address>
                주소 Fake street, 3929, London
              </address>
            </div>
            <div class="d-flex">
              <span class="icon-phone"></span>
              번호 +1 291 2902 392
            </div>
            <div class="d-flex">
              <span class="icon-chat-square"></span>
              진료유형 info@mydomain.com
            </div>
            <div class="d-flex">
              <span class="icon-globe"></span>
              <a href="#">https://mywebsite.com</a>
            </div>
          </div>
          </div>
        </div>
      </div>
  </div>
  <div>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
          integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
            integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
            crossorigin=""></script>

    <div id="mapid" class="col-lg-12 mx-auto" style="width: 700px; height: 500px;"></div>
    <script>

      var firstzoom = 13;
      var first = { lat: 37.4979462 ,lng: 127.025427 };
      <c:if test="${!empty list}">
      first = { lat: ${fplat}, lng: ${fplng} };
      </c:if>


      var mymap = L.map('mapid').setView(first, firstzoom);

      function onListClick(mylat, mylng) {
        alert("dd");
        first = { lat: mylat, lng: mylng };
        mymap = L.map('mapid').setView(first, firstzoom);
        L.map('mapid').popupopen()
                .autopanstart()
                .zoomlevelsChange(7)
                .addTo(mymap);
      }
      function plusZoom(){
        firstzoom = 16;
      }


      L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
        minZoom: 1,
        maxZoom: 19,
      }).addTo(mymap);

      <c:forEach var="l" items="${list}">
      var pnt = { lat: ${l.lat} ,lng: ${l.lng} };
      L.marker(pnt).addTo(mymap)
              .bindPopup("<div><a >${l.name}<br> ${l.addr}</a></div>");
      </c:forEach>

      var popup = L.popup();

      function onMapClick(e) {
        popup
                .setLatLng(e.latlng)
                .setContent(e.latlng.toString())
                .openOn(mymap);
      }


      mymap.on('click', onMapClick);

    </script>

  </div>

<div class="site-section">
  <div class="container">
    <div class="row">
        <div class="site-footer">
          <div class="container">
            <div class="row">
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">About</h2>
                <div class="my-5">
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="row">
                  <div class="col-lg-4">
                    <h2 class="footer-heading mb-4">Quick Links</h2>
                    <ul class="list-unstyled">
                      <li><a href="#">Symptoms</a></li>
                      <li><a href="#">Prevention</a></li>
                      <li><a href="#">FAQs</a></li>
                      <li><a href="#">About Coronavirus</a></li>
                      <li><a href="#">Contact Us</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-4">
                    <h2 class="footer-heading mb-4">Helpful Link</h2>
                    <ul class="list-unstyled">
                      <li><a href="#">Helathcare Professional</a></li>
                      <li><a href="#">LGU Facilities</a></li>
                      <li><a href="#">Protect Your Family</a></li>
                      <li><a href="#">World Health</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-4">
                    <h2 class="footer-heading mb-4">Resources</h2>
                    <ul class="list-unstyled">
                      <li><a href="#">WHO Website</a></li>
                      <li><a href="#">CDC Website</a></li>
                      <li><a href="#">Gov Website</a></li>
                      <li><a href="#">DOH Website</a></li>
                    </ul>
                  </div>
                  <div class="col-lg-4">
                    <img src="../../resource/images/protect.png" alt="Image" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>

            <div class="row text-center">
              <div class="col-md-12">
                <div class="border-top pt-5">
                  <p class="copyright"><small>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>

                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
</div>
 <!-- .site-wrap -->

<script src="../../resource/js/jquery-3.3.1.min.js"></script>
<script src="../../resource/js/jquery-ui.js"></script>
<script src="../../resource/js/popper.min.js"></script>
<script src="../../resource/js/bootstrap.min.js"></script>
<script src="../../resource/js/owl.carousel.min.js"></script>
<script src="../../resource/js/jquery.countdown.min.js"></script>
<script src="../../resource/js/jquery.easing.1.3.js"></script>
<script src="../../resource/js/aos.js"></script>
<script src="../../resource/js/jquery.fancybox.min.js"></script>
<script src="../../resource/js/jquery.sticky.js"></script>
<script src="../../resource/js/isotope.pkgd.min.js"></script>


<script src="../../resource/js/main.js"></script>


</body>
</html>