
var firstzoom = 13;
var first = { lat: 37.4979462 ,lng: 127.025427 };
var mymap;
var markers ;


$('document').ready(function() {
    mymap = L.map('mapid').setView(first, firstzoom);
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="http://openstreetmap.org/copyright">OpenStreetMap</a> contributors',
        minZoom: 1,
        maxZoom: 19,
    }).addTo(mymap);

    // var layer = L.layer;
    //
    // var pnt = {lat: 37.4979462, lng: 127.025427};
    // L.marker(pnt).addTo(mymap)
    //     .bindPopup("<div><a ><br> </a></div>");
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


/**리스트 마커 그리기*/
function sendMap(list) {

   markers = [];
   var str = "";
   var cate = list[0].category;
   var cateText = "";

    if(cate == 1){
        cateText = "국민안심병원";
    }else if(cate == 2){
        cateText = "호흡기전담클리닉";
    }else if(cate == 3){
        cateText = "선별진료소";
    }else if(cate == 4){
        cateText = "자동차선별진료소";
    }

    $.each(list, function (index, item) {
        var latlng = {lat: item.lat, lng: item.lng};
        var marker = L.marker(latlng).addTo(mymap);

        if(item.category == 1){
            if(item.type == 'A'){
                str = "외래진료";
            }else {
                str = "외래진료 및 입원";
            }
        }else if(item.category == 2){
            if(item.collect == '○'){
                str = "코로나 검사 가능";
            }else {
                str = "코로나 검사 불가";
            }
        }
        
        // marker bindpopup //
        var popup = L.popup()
            .setLatLng(latlng)
            .setContent('<p>' + cateText + '<br />' + item.name + '<br />' + item.addr + '<br />' + str + '<br />' + '</p>');
        marker.bindPopup(popup);

        markers.push(marker);
    });
    // layer = markers;
    // layer.addTo(mymap);

}

function resetMap() {
    //layer.removeFrom(mymap);
}