<%@ page language="java" contentType="text/html; charset=URF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
        <title>BE FREE</title>
        <style>
            body { margin:0 auto; padding:20px 0 0 0; font-family: 'Gowun Dodum', sans-serif;}
            li { display: inline-block; list-style: none; }
            a { text-decoration: none; color:black;}
            header{ display: inline-block; width: 1400px; margin: 0 auto;}
            .hd { 
                background-image: url('images/town_2.jpg');
                background-size:over;
                background-size:100% 100%;
                background-attachment: fixed;
                width:1400px;
                height:300px;
                background-repeat: no-repeat;
                margin-top:-20px;
            }
            .main{
                margin: 0 auto;
                padding: 20px;
                text-align: center;
            }
            .logo{
                /*margin-top: 30px;
                display: flex;
                position : relative;*/
                height: 100px;
                /*left: 7%*/
            }
            .login { margin-right: 62px; /*float: right;*/ }
            header ul{ text-align: right; }
            .p { 
                height:60px;
                z-index: 1;
                width:1500px; 
                margin:0; 
                padding:0;
             }
             nav {
                display: flex;
                justify-content: center;
                position: relative;
                /* background: black; */
                margin: 0 auto;
                /* width: 95%; */
                /* position: absolute; */
                /* left: 10%;*/
            }
            ul, li {
                margin: 0;
                padding: 0;
                list-style: none;
                text-decoration: none;
            }

            nav > ul > li{
                width: 130px;
            }
            .se{
                background-color: white;
                /*position: absolute;
                top: 733px;
                left: 4%;*/
	            margin: 0 auto;
            }
            #main-menu{
                /*background: black;*/
                height: 40px;
                /* position: relative; */
                /* top: 50%; */
                justify-content: center;
                margin: 35px 0px 0px 20px;
                float: right;
                width: 810px;
            }
            #main-menu > li > a {
                /*color:white;*/
                text-align: center;
                line-height: 39px;
                padding: 0px 20px 0px 15px;
                text-shadow: 1px 1px 1px white(0, 0, 0, 0.39);
                width: 90px;
                float: right;
            }
            
            #main-menu > li::before{
                content: "|";
                float: right;
                display: block;
                margin-top: 7.7px;
            }
            #main-menu > li:last-child::before{
                content: "";
            }
            #main-menu > li> .logo{
                width: 120px;
            }

            #sub-menu {
                width:120px;
                position: absolute;
                opacity: 0;
                visibility: hidden;
                background-color: rgba(255, 255, 255, 0.801);
                border-top: 2px solid gold;
                text-align: center;
                top: 74px;
            }

            #sub-menu > li {
                display: block;
                font-size:13px;
                padding: 10px 10px;
            }

            #main-menu > li:hover #sub-menu {
                z-index: 1;
                opacity: 1;
                visibility: visible;
            }
            #sub-menu > li > a:hover { text-decoration:underline; color:gray; }
            .event ul li { list-style: none; display: inline-block; }
            section div img { width: 100%; } 
            .ment {
                margin :0 auto;
                float:left;
                width:100%;
                font-size:100px;
                text-align: center;
                margin-top:100px;
                color:rgb(255, 255, 255);
                font-size: 70px;
            }
            section{width:1400px;margin:0 auto; padding-top:50px;}
            .a1{ text-align: center; font-weight: bold; font-size:30px;}
           /*.a2{background-color:gray; color:white; border-bottom: 2px solid black; padding:5px; margin-top:10px;}*/
            .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '??????', sans-serif;line-height: 1.5;}
            .wrap * {padding: 0;margin: 0;}
            .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
            .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
            .info .title {padding: 5px 0 0 10px;height: 30px;background: rgb(17, 38, 141);border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold; color: #fff;}
            .info .close {position: absolute;top: 10px;right: 10px;color: rgb(255, 255, 255);width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
            .info .close:hover {cursor: pointer;}
            .info .body {position: relative;overflow: hidden;}
            .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
            .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
            .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
            .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
            .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
            .info .link {color: #5085BB;}
            footer{
                clear:both;
                margin:0 auto;
                /*background-color: rgb(22, 20, 20);*/
                color:white;
                text-align: center;
                /*padding:15px;*/
                font-size: 12px;
                position: relative;
                width: 1350px;
                bottom: 0;
                left: 0;
                border-bottom: 100px solid black;
				border-right: 25px solid transparent;
				border-left: 25px solid transparent;
				height: 0px;
            }
            .item_list{
                text-align: center;
            }
            .recommend_plan{
                display: inline-block;
                /*text-align: center;*/
                margin: 0px;
            }
            .item_section{
                float: left;
                /*width: 300px;
                box-shadow: 5px 5px 5px gray;
                border: 1px solid rgb(184, 184, 184);
                border-radius: 5px;*/
                margin: 10px;
            }
            .item_btm_like{
                text-align: right;
                padding: 10px 20px 10px 10px;
                border-top: 1px solid rgb(184, 184, 184);
            }
            .item_title{
                font-size: 20px;
                margin: 0px 0px 0px 0px;
            }
            .item_plan{
                margin: 0px 0px 16px 0px;
                clear: left;
                text-align: left;
            }
            .item_img{
                margin: 20px;
                width: 200px;
            }

            .item_list2{
                width: 1400px;
                text-align: center;
                margin-top: 70px;
            }
            .table_travle{
                margin-left: auto;
                margin-right: auto;
            }
            .travle{
                /*border: 1px solid gray;*/
                padding-right: 60px;
            }
            .item_section2{
                float: left;
                /*width: 240px;*/
                /*box-shadow: 5px 5px 5px gray;*/
                border: 1px solid rgb(184, 184, 184);
                border-radius: 5px;
                margin: 10px;
            }
            .item_section3{
                float: left;
                /*width: 240px;*/
                /*box-shadow: 5px 5px 5px gray;
                border: 1px solid rgb(184, 184, 184);
                border-radius: 5px;*/
                margin: 10px;
            }
            .item_title2{
                margin: 0px 0px 20px 0px;
                font-size: 20px;
            }
            .item_btm_like2{
                text-align: right;
                padding: 10px 20px 10px 10px;
                border-top: 1px solid rgb(184, 184, 184);
            }
            .hash{
                /*width: 250px;*/
                padding: 20px;
                /*border: 1px solid rgb(240, 240, 240);
                border-radius: 150px;
                background-color: rgb(240, 240, 240);*/
            }
            .item_top_jeju{
                margin-top: 45px;
            }
            .item_title{
                font-size: 40px;
                font-weight: bold;
                font-family: 'Black Han Sans', sans-serif;
                color: rgb(255, 255, 255);
                -webkit-text-stroke-width: 0.5px;
                -webkit-text-stroke-color: rgb(0, 0, 0);
                float: left;
            }
            .item_sub{
                font-size: 40px;
                font-family: 'Black Han Sans', sans-serif;
                color: black;
                -webkit-text-stroke-width: 0px;
                margin: 0px 0px 0px 12px;
                float: left;
            }
            .back{
                background: linear-gradient(to right, #0052d4,#4364f7,#6fb1fc);
                height: 44px;
                padding: 5px;
            }
            .logo_img{
                width: 390px;
                padding: 74px 10px 74px 10px;
            }
            .site_logo{
                font-size: 40px;
                font-family: 'Black Han Sans', sans-serif;
                /*background: linear-gradient(to right top, #0052d4,#4364f7,#6fb1fc);
                color: transparent;
                -webkit-background-clip: text;
                -webkit-text-stroke-width: 0px;*/
                color: black;
                margin: 0px 0px 0px 0px;
            }
            .object_logo{
                font-size: 40px;
                font-family: 'Black Han Sans', sans-serif;
                /*background: linear-gradient(to right top, #0052d4,#4364f7,#6fb1fc);
                color: transparent;
                -webkit-background-clip: text;
                -webkit-text-stroke-width: 0px;*/
                color: black;
                margin: 0px 0px 0px 0px;
            }
            .logo_img3{
                width: 350px;
            }
            .item_list3{
                width: 1400px;
                text-align: center;
                margin-top: 70px;
            }
            .table_site{
                margin-left: auto;
                margin-right: auto;
            }
            .a2{
                font-size: 40px;
                font-family: 'Black Han Sans', sans-serif;
                /*background: linear-gradient(to right top, #0052d4,#4364f7,#6fb1fc);
                color: transparent;
                -webkit-background-clip: text;
                -webkit-text-stroke-width: 0px;*/
                color: black;
                margin: 0px 0px 0px 0px;
            }
        </style> 

        <script>
            /*
            var mapContainer = document.getElementById('map'), // ????????? ????????? div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
        level: 3 // ????????? ?????? ??????
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
    
// ???????????? ???????????? ?????? ?????? ???????????? ????????? ???????????? ???????????? ??????????????? ????????? ???????????????
function setMapType(maptype) { 
    var roadmapControl = document.getElementById('btnRoadmap');
    var skyviewControl = document.getElementById('btnSkyview'); 
    if (maptype === 'roadmap') {
        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
        roadmapControl.className = 'selected_btn';
        skyviewControl.className = 'btn';
    } else {
        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
        skyviewControl.className = 'selected_btn';
        roadmapControl.className = 'btn';
    }
}

// ?????? ??????, ?????? ??????????????? ?????? ????????? ????????? ???????????? ????????? ???????????? ???????????????
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
}

// ?????? ??????, ?????? ??????????????? ?????? ????????? ????????? ???????????? ????????? ???????????? ???????????????
function zoomOut() {
    map.setLevel(map.getLevel() + 1);
}*/
        </script>
       
    </head>
    <body>
        <div class="all">
            <div class="main">
                <header>
                    <div class="name">
                    </div>
    
                    <ul class="login">
                        <li><a href="login.jsp">?????????</a></li> &nbsp;
                        <li><a href="clause.jsp">????????????</a></li>
                    </ul>
                
                    <nav>
                        <div class="title_menu">
                            <a href="main.jsp"><img class="logo" src="images/BE_FREE.png"></a>
                            <ul id="main-menu">
                                <li><a href="????????????.html">BE FREE???</a></li>
                                <li><a href="#">?????????</a></li>
                                <li><a href="#">???????????????</a>
                                    <ul id="sub-menu">
                                        <li><a href="????????????.html">???????????????</a></li>
                                        <li><a href="????????????.html">??????????????????</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">???????????????</a></li>
                                <li><a href="#">?????????</a>
                                    <ul id="sub-menu">
                                        <li><a href="notice.jsp">????????????</a></li>
                                        <li><a href="Q&A.jsp">Q&A</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">?????? ?????????</a>
                                    <ul id="sub-menu">
                                        <li><a href="???????????????.html">?????? ??? ??????</a></li>
                                        <li><a href="??????????????????.html">?????? ?????? ??????</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="hd">
                        <div class="ment">
                          BE FREE
                        </div>
                    </div>
                </header>
            </div>
            
            <div class="se">
                <section>
                    <div class="item_list">
                        <dd class="recommend_plan">
                            <dl class="item_section">
                                <dt class="item_top">
                                    <a href="#">
                                        <img src="images/jejudo/jejudo.png" width="200px" height="200px" class="item_img">
                                    </a>
                                </dt>
                            </dl>
                            <dl class="item_section">
                                <dt class="item_top_jeju">
                                    <div class="back"><p class="item_title">???????????? ????????? </p><p class="item_sub">??????</p></div><br>
                                    <p class="item_plan">BE FREE ???????????? ???????????? ????????? ????????? ?????? ????????????.<br>
                                        ?????????, ????????????, ?????????????????? ???????????? ????????? ???????????????.<br>
                                        ???????????? ?????? ????????? ?????? ?????? ???????????? ??? ??? ????????? ????????? ?????? ????????? ???????????? ???????????? ????????? ?????????????????????. </p>
                                </dt>
                            </dl>
                        </dd>
                        
                    </div>
                    
                    <div class="item_list2">
                        <dd class="recommend_travle">
                            <table class="table_travle">
                                <tr>
                                    <td class="travle">
                                        <dl class="item_section2">
                                            <dt class="item_top">
                                                <a href="#">
                                                    <img src="images/BE_FREE.png" class="logo_img">
                                                </a>
                                            </dt>
                                        </dl>
                                    </td>
                                    <td class="hash">
                                        <p class="site_logo">????????? ??????</p><br>
                                        <hr>
                                        <p> 'BE FREE'??? '????????????'?????? ????????? ????????? ????????????.<br>
                                            ???????????? ????????? ???????????? ????????? ?????? ??? ????????? ???????????? ????????? ???????????????.</p>
                                    </td>
                                </tr>
                            </table>
                        </dd>
                    </div>

                    <div class="item_list3">
                        <dd class="site_object">
                            <table class="table_site">
                                <tr>
                                    <td class="travle">
                                        <p class="object_logo">????????? ??????</p><br>
                                        <hr>
                                        <p> ???????????? ??????????????? ???????????? ?????? ????????? ??? ??? ????????? ???????????????<br>
                                            ????????? ????????? ????????? ??? ??? ????????? ???????????????.
                                        </p>
                                        </dl>
                                    </td>
                                    <td class="hash">
                                        <dl class="item_section3">
                                            <dt class="item_top3">
                                                    <img src="images/site_object.png" class="logo_img3">
                                            </dt>
                                        </dl>
                                    </td>
                                </tr>
                            </table>
                        </dd>
                    </div>
                    <!--p class="a1">?????? BE FREE ???????????? ????????? ???????????????.</p><br>
                    <p class="a2">??????</p>
                    <p> 'BE FREE'??? '????????????'?????? ????????? ????????? ????????????.<br>
                        ???????????? ????????? ???????????? ????????? ?????? ??? ????????? ???????????? ????????? ???????????????.</p>
                    <br><br>
                    <p class="a2">??????</p>
                    <p> ???????????? ??????????????? ???????????? ?????? ????????? ??? ??? ????????? ???????????????<br>
                        ????????? ????????? ????????? ??? ??? ????????? ???????????????.
                    </p>
                    <br><br-->
                    <p class="a2">????????? ??? </p><br>
                    
                    <div id="map" style="width:100%;height:350px;"></div>
    
                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=19ee1aad628e3c1d1ed60863856d92c6"></script>
                    <script>
                    var mapContainer = document.getElementById('map'), // ????????? ????????? div 
                        mapOption = { 
                            center: new kakao.maps.LatLng(37.45989427195582, 127.12929871328285), // ????????? ????????????
                            level: 3 // ????????? ?????? ??????
                        };
    
                    // ????????? ????????? div???  ?????? ????????????  ????????? ???????????????
                    var map = new kakao.maps.Map(mapContainer, mapOption); 
    
                    // ????????? ????????? ??????????????? 
                    var marker = new kakao.maps.Marker({
                        map: map, 
                        position: new kakao.maps.LatLng(37.45989427195582, 127.12929871328285)
                    });
    
                    // ????????? ??????????????? ????????? ????????? ?????????
                    // ????????? ??????????????? ????????? ?????? ???????????? ???????????? ???????????? ???????????? ???????????? ????????? ??? ?????? ?????????
                    // ????????? ????????? ???????????? ???????????? ???????????? 
                    var content = '<div class="wrap">' + 
                                '    <div class="info">' + 
                                '        <div class="title">' + 
                                '            ??????????????????' + 
                                '            <div class="close" onclick="closeOverlay()" title="??????"></div>' + 
                                '        </div>' + 
                                '        <div class="body">' + 
                                '            <div class="img">' +
                                '                <img src="images/DU.jpg" width="73" height="70">' +
                                '           </div>' + 
                                '            <div class="desc">' + 
                                '                <div class="ellipsis">?????? ????????? ????????? ????????? 423-8</div>' + 
                                '                <div class="jibun ellipsis">031-720-2900</div>' + 
                                '                <div><a href="https://www.du.ac.kr/KR/index.do" target="_blank" class="link">????????????</a></div>' + 
                                '            </div>' + 
                                '        </div>' + 
                                '    </div>' +    
                                '</div>';
    
                    // ?????? ?????? ???????????????????????? ???????????????
                    // ????????? ???????????? ????????? ??????????????? ?????????????????? CSS??? ????????? ????????? ??????????????????
                    var overlay = new kakao.maps.CustomOverlay({
                        content: content,
                        map: map,
                        position: marker.getPosition()       
                    });
    
                    // ????????? ???????????? ??? ????????? ??????????????? ???????????????
                    kakao.maps.event.addListener(marker, 'click', function() {
                        overlay.setMap(map);
                    });
    
                    // ????????? ??????????????? ?????? ?????? ???????????? ??????????????? 
                    function closeOverlay() {
                        overlay.setMap(null);     
                    }
                    </script>




                </section>
                <footer>
                    <p style="padding: 25px 0px 0px 0px;">?????? : 031-720-2114</p>
                    <p>?????? : ????????? ????????? ????????? ????????? 76</p>
                </footer>
            </div>
            
            </div>

        

    </body>
</html>