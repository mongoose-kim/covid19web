<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>$Title$</title>
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
        integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
        crossorigin=""/>
  <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css" integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH" crossorigin="anonymous">
  <style>
    #mapid {

    }

  </style>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="../../resource/js/indexpage.js"></script>
</head>
<body>


<div class="bs-component">
  <a class="navbar-brand" href="/">코로나19 의료기관 안내</a>

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
    <button class="btn btn-secondary my-2 my-sm-0" id="searchBtn">Search</button>


</div>
</div>
</div>
</div>
<br>

<div class="wrap"></div>

<div style="float: left;">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
        integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
        crossorigin=""/>
  <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
          integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
          crossorigin=""></script>

  <div id="mapid" style="width: 1000px; height: 750px;"></div>
</div>
</body>
</html>