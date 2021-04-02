
var firstzoom = 7;
var first = { lat: 36.1028503 ,lng: 128.1381123 };
var mymap;
var markers;
var cluster;
var cate = 0;

$('document').ready(function() {
    mymap = L.map('mapid').setView(first, firstzoom);
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
        minZoom: 1,
        maxZoom: 19,
    }).addTo(mymap);

});

function onListClick(index) {


    /**
     * 1. markers[index] focus + zoomlevel
     * 2. popup open
     *
     * */

    mymap.setView(markers[index]._latlng, 19);
    markers[index].openPopup();


}

var purpleMarkerIcon = L.icon({
    iconUrl: '../../resource/img/purple-location.png',
    iconSize:     [43, 51], // size of the icon
    iconAnchor:   [18, 50], // point of the icon which will correspond to marker's location
    popupAnchor:  [3, -54] // point from which the popup should open relative to the iconAnchor
});

var redMarkerIcon = L.icon({
    iconUrl: '../../resource/img/red-location.png',
    iconSize:     [43, 51], // size of the icon
    iconAnchor:   [18, 50], // point of the icon which will correspond to marker's location
    popupAnchor:  [3, -54] // point from which the popup should open relative to the iconAnchor
});

/**리스트 마커 그리기*/
function sendMap(list, c) {
    resetMap();

    if(list[0] == null){ return;}
    else {
        cate = c;

        markers = [];
        var str = "";
        var cateText = "";

        //console.log(cate);
        if (cate == 1) {
            cateText = "국민안심병원";
        } else if (cate == 2) {
            cateText = "호흡기전담클리닉";
        } else if (cate == 3) {
            cateText = "선별진료소";
        } else if (cate == 4) {
            cateText = "자동차선별진료소";
        }

        cluster = new L.markerClusterGroup();

        $.each(list, function (index, item) {
            var latlng = {lat: item.lat, lng: item.lng};
            var mIcon = purpleMarkerIcon;

            if (cate == 1) {
                if (item.type == 'A') {
                    str = "&#11050; 유형 : 외래진료";
                    mIcon = redMarkerIcon;
                } else {
                    str = "&#11050; 유형 : 외래진료 및 입원";
                    mIcon = purpleMarkerIcon;
                }
            } else if (cate == 2) {
                if (item.collect == '○') {
                    str = "&#11050; 검사여부 : 코로나 검사 가능<br />";
                    mIcon = redMarkerIcon;
                } else {
                    str = "&#11050; 검사여부 : 코로나 검사 불가<br />";
                    mIcon = purpleMarkerIcon;
                }
                str += "&#11050; 월 : " + item.openMo + "<br />";
                str += "&#11050; 화 : " + item.openTu + "<br />";
                str += "&#11050; 수 : " + item.openWe + "<br />";
                str += "&#11050; 목 : " + item.openTh + "<br />";
                str += "&#11050; 금 : " + item.openFr + "<br />";
                str += "&#11050; 토 : " + item.openSa + "<br />";
                str += "&#11050; 일 : " + item.openSu;

            } else if (cate == 3 || cate == 4) {
                str += "&#11050; 평일 : " + item.openWd + "<br />";
                str += "&#11050; 토 : " + item.openSa + "<br />";
                str += "&#11050; 일 : " + item.openSu;
            }
            str += "<br />";

            var marker = L.marker(latlng, {icon: mIcon});

            // layer = marker;
            var popup = L.popup()
                .setLatLng(latlng)
                .setContent('<p style="font-family: HY중고딕;"><span class="badge badge-info">' + cateText + '</span>'
                    + '<br /><b>' + item.name + '</b><br />&#11050; 주소 : ' + item.addr
                    + '<br />&#11050; 번호 : <a href="tel:' + item.tel + '">' + item.tel + '</a><br />' + str + '' + '</p>');
            marker.bindPopup(popup);
            str = "";

            markers.push(marker);
            cluster.addLayer(marker);
        });
        mymap.addLayer(cluster);
        mymap.fitBounds(cluster.getBounds());
    }
}


function resetMap() {

    /**
     * 1. marker 존재여부 chk
     *  있으면 > 마커 지우고
     *  없으면 return;*/

    if(cluster) {
        mymap.removeLayer(cluster);
    }

    if(markers) {
        $.each(markers, function (index, item) {
            mymap.removeLayer(item);
        });
        markers = [];
    }

}