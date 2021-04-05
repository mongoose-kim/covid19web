
$('document').ready(function() {

    var area0 = ["전체","서울","인천","대전","광주","대구","울산","부산","경기","강원","충북","충남","전북","전남","경북","경남","제주"];
    var area1 = ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
    var area2 = ["전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
    var area3 = ["전체","대덕구","동구","서구","유성구","중구"];
    var area4 = ["전체","광산구","남구","동구", "북구","서구"];
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

    window.open("guide","popup", "width=710, height=710, left=0, top=0");

        var category = 0;
        var chkArray = [];
        if(category == 0) {
            allselhide();
        }

    /* 모든 선택옵션 안보이게*/
        function allselhide(){
            $("#select").hide();
            $("#hostype").hide();
            $("#clitype").hide();
            $("#searchBtn").hide();
            $("#triopen").hide();
            $("#cliopen").hide();
            $("#hospital-info").hide();
            $("#clinic-info").hide();
        }

        function selshow(){
            $("#select").show();
            $("#searchBtn").show();
        }

    /* 체크박스 배열로 담기*/
        function copen_chk() {
            var obj_copen = [];
            $('.copen').each(function(index){
                if($(this).is(":checked")){
                    obj_copen.push($(this).val());
                }
            });
            chkArray = obj_copen;
        }

        function topen_chk() {
            var obj_topen = [];
            $('.topen').each(function(index){
                if($(this).is(":checked")){
                    obj_topen.push($(this).val());
                }
            });
            chkArray = obj_topen;
        }

    /* 전체 누르면 체크박스 모두선택 */
    $('#allcopen').change( function(){
        var imChecked = $(this).is(":checked");
        if(imChecked){
            $('.copen').prop('checked',true);
        } else {
            $('.copen').prop('checked',false);
        }
    });

    $('#alltopen').change( function(){
        var imChecked = $(this).is(":checked");
        if(imChecked){
            $('.topen').prop('checked',true);
        } else {
            $('.topen').prop('checked',false);
        }
    });

    $('#hosBtn').on('click', function(){
        allselhide();
        selshow();
        $("#hostype").show();
        $("#hospital-info").show();
        category = 1;
        changeCate(category);
    });

    $('#cliBtn').on('click', function(){
        allselhide();
        selshow();
        $("#cliopen").show();
        $("#clitype").show();
        $("#clinic-info").show();
        category = 2;
        changeCate(category);
    });

    $('#triBtn').on('click', function(){
        allselhide();
        selshow();
        $("#triopen").show();
        category = 3;
        changeCate(category);
    });

    $('#carBtn').on('click', function(){
        allselhide();
        selshow();
        $("#triopen").show();
        category = 4;
        changeCate(category);
    });

    
    $('#searchBtn').on('click', function(){
        $('.menu-toggle').click();
        var params = "?sido=" + $("#sido1 option:selected").val() +
            "&gungu=" + $("#gugun1 option:selected").val();
        var cate;
        if(category == 1){
            cate = "hos";
            params += "&type=" + $("#type option:selected").val();
        }
        else if(category == 2){
            cate = "cli";
            params += "&collect=" + $("#collect option:selected").val();
            copen_chk();
            params += "&chkArray=" + chkArray;
            //console.log(chkArray);
        }
        else if(category == 3){cate = "tri";
            topen_chk();
            params += "&chkArray=" + chkArray;}
        else if(category == 4){cate = "car";
            topen_chk();
            params += "&chkArray=" + chkArray;}
        $.ajax({
            url: "co/" + cate + params,
            type: "GET",
            contentType: "application/json; charset=utf-8;",
            dataType: "json",
            async:false,
            success: function(data){
                resultHtml(data, category);
            },
            error: function(){
                alert("운영요일을 선택해주세요.");
            }
        });
    });


});


    function setClassName(id) {
    document.getElementById('hosBtn').className = 'btn btn-outline-primary btn-block';
    document.getElementById('cliBtn').className = 'btn btn-outline-primary btn-block';
    document.getElementById('triBtn').className = 'btn btn-outline-primary btn-block';
    document.getElementById('carBtn').className = 'btn btn-outline-primary btn-block';

    document.getElementById(id).className = 'btn btn-outline-primary btn-block active';
}

    function changeCate(c){
        resetMap();

    $("#sido1 option:eq(0)").prop("selected", true);
    $("option",$("#gugun1")).remove();
    $("#gugun1").append("<option value=''>구/군 선택</option>");

    var params = "?sido=전체";

    if(c == 1){
    setClassName('hosBtn');
        $("#type option:eq(0)").prop("selected", true);
    cate = "hos";}
    else if(c == 2){
    setClassName('cliBtn');
        $("#collect option:eq(0)").prop("selected", true);
        $("input:checkbox[id='allcopen']").prop("checked", true).attr("checked", true);
        $("input:checkbox[class='copen']").prop("checked", true).attr("checked", true);

    cate = "cli";}
    else if(c == 3){
    setClassName('triBtn');
        $("input:checkbox[id='alltopen']").prop("checked", true).attr("checked", true);
        $("input:checkbox[class='topen']").prop("checked", true).attr("checked", true);
    cate = "tri";}
    else if(c == 4){
    setClassName('carBtn');
        $("input:checkbox[id='alltopen']").prop("checked", true).attr("checked", true);
        $("input:checkbox[class='topen']").prop("checked", true).attr("checked", true);
    cate = "car";}

    $.ajax({
    url: "co/" + cate + params,
    type: "GET",
    contentType: "application/json; charset=utf-8;",
    dataType: "json",
    async:false,
    success: function(data){
        resultHtml(data, c);
},
    error: function(){
    alert("Error");
}
});
}

/* 체크박스 하나라도 해제하면 전체 체크박스 자동해제*/
function checkSelectAllT()  {
    // 전체 체크박스
    const checkboxes
        = document.querySelectorAll('input[class="topen"]');
    // 선택된 체크박스
    const checked
        = document.querySelectorAll('input[class="topen"]:checked');
    // select all 체크박스
    const selectAll
        = document.querySelector('input[id="alltopen"]');

    if(checkboxes.length === checked.length)  {
        selectAll.checked = true;
    }else {
        selectAll.checked = false;
    }
}

function checkSelectAllC()  {
    // 전체 체크박스
    const checkboxes
        = document.querySelectorAll('input[class="copen"]');
    // 선택된 체크박스
    const checked
        = document.querySelectorAll('input[class="copen"]:checked');
    // select all 체크박스
    const selectAll
        = document.querySelector('input[id="allcopen"]');

    if(checkboxes.length === checked.length)  {
        selectAll.checked = true;
    }else {
        selectAll.checked = false;
    }
}

/* 조회 결과 테이블*/
    function resultHtml(data, c){
        sendMap(data.list, c);
    $(".wrap").empty();
    var result = '';
    result += '<br><div class="table-text">' + data.result[0] + ' ' + data.result[1] + ' '
    result += '검색결과입니다.<br>'
    result += data.list.length + '개가 조회되었습니다.<br>'
    result += '<div class="tbl-header">'
    result += '<table cellpadding="0" cellspacing="0" border="0">'
    result += '<thead><tr><th>이름</th><th>주소</th><th>전화번호</th></tr></thead></table></div>'
    result += '<div class="tbl-content"><div class="text-center"><table class="table table-hover"><tbody>'
    if(data.list[0] == null){
        result += '<tr class="table-light" style="pointer-events: none;"><td></td></tr>'
        result += '<tr class="table-light" style="pointer-events: none;"><td> 조회된 결과가 없습니다.   </td></tr>'
        result += '<tr class="table-light" style="pointer-events: none;"><td></td></tr>'
    }
    else {
        $.each(data.list, function (index, item) {
            result += '<tr class="table-light" onclick="onListClick(' + index + ')">'
            result += '<td>' + item.name + '</td>'
            result += '<td> ' + item.addr + '</td>'
            result += '<td> ' + item.tel + '</td>'
            result += '</tr>'
        });
    }
    result += '</tbody>'
    result += '</table>'
    result += '</div></div></div>'
    $(".wrap").append(result);
}


