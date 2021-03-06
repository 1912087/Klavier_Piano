<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>BE FREE</title>
        <script src ="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Bungee+Inline&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

        <style>
            body{font-family: 'Gowun Dodum', sans-serif;}
            ul {list-style-type: none;}
            a {text-decoration: none; color:black;}
            input {height:30px; width: 319px;}

            .all {
                padding-top:15px;
                margin:0 auto;
                width:995px;
            }
            .logo{
                display: flex;
                width: 341px;
                float: left;
            }
            .aa {
                /*height:1200px;*/
                background-color: #f5f6f7;
                padding-top: 50px;
                position: relative;
                top: 110px;
                padding-bottom: 100px;
            }

            h2 {
                font-size: 35px;
                margin: 0px;
                float: right;
                text-align: right;
                z-index: -1000;
                width: 200px;
                margin-top: 47px;   
            }

            .aa li, .a2 div { margin-left:50px;}

            .a2 {
                width:500px;
                margin:0 auto;
            
            }
            .btn {text-align: center;}
            .ch {position: relative; top:-10px;}
            .btn1{
                background-color: rgb(89, 161, 165);
                width: 150px;
                height: 42px;
                border: none;
                font-family: 'Gowun Dodum', sans-serif;
                color: white;
                font-size: 15px;
            }
            .btn1 a{color: white; font-family: 'Gowun Dodum', sans-serif; font-size: 15px;}
            .btn2{
                background-color: rgb(114, 114, 114);
                width: 150px;
                height: 42px;
                border: none;
            }
            .btn2 a{color: white; font-family: 'Gowun Dodum', sans-serif; font-size: 15px;}

			.checking{height: 20px; width: 20px;}

            .btn-primary input[type="radio"] {
                display: none;
            }
            .btn-primary input[type="radio"] + span{
                display:inline-block;
                background:none;
                border:1px solid #a1a1a1;  
                padding:0px 10px;
                text-align:center;
                height:35px;
                line-height:33px;
                font-weight:500;
                cursor:pointer;
                width: 137px;
                margin-bottom: 20px;
            }

            .btn-primary input[type="radio"]:checked + span{
                border:1px solid #23a3a7;
                background:#23a3a7;
                color:#fff;
            }
 
        </style>
        <script type="text/javascript">
            $(function(){
                $('.btn1').click(function(){
                    var id = document.getElementById('ID').value;
                    var pw = document.getElementById('PW').value;
                    var pwchk = document.getElementById('PWchk').value;
                    var name = document.getElementById('name').value;
                    var email = document.getElementById('email').value;
                    var terms1 = $("#check1").is(':checked');

                    if(id ==""){
                        alert("???????? ??????????");
                        id.focus();
                        exit;
                        
                    }else if(pw ==""){
                        alert("?????????? ??????????");
                        pw.focus();
                        exit;
                        
                    }else if(pwchk==""){
                        alert("?????????????? ??????????");
                        pwchk.focus();
                        exit;
                    }else if(name==""){
                        alert("?????? ??????????");
                        name.focus();
                        exit;
                    }
                    if(email==""){
                        alert("???????? ??????????");
                        document.join.email.focus();
                        exit;
                    }
                    if(pw!=pwchk){
                        alert("?????? 2???? ?????????? ???????? ????????.");
                        document.join.pw.focus();
                        exit;
                    }
                    if(id.length<5 || id.length>20){
                        alert("???????? 5?????? 20???????? ????????????.");
                        document.join.id.focus();
                        exit;
                    }
                    if(!CheckEmail(email)){
                        alert("?? ?????????? ???????? ????????.");
                        document.join.email.focus();
                        exit;
                    }
                });

                // ???????? ???????????? ???????? ???? 
                function CheckEmail(str)
                {                                                 
                    var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
                    if(!reg_email.test(str)) {                            
                        return false;         
                    }                            
                    else {                       
                        return true;         
                    }                            

                }
            });
            
        </script>
    </head>
    <body>
        <div class="all">
            <header>
                <div class="name">
                    <a href="main.jsp"><img class="logo" src="images/BE_FREE.png"></a>
                    <h2>????????</h2>
                </div>
            </header>

            <form method="post" action="joinAction.jsp">
                <div class="aa">
                    <div class="a2">
                        <ul>
                            <li><label>??????</label><br><input type="id" size="43" id="ID" name="userID" placeholder=" 5~20???? ???? ??????, ????" autofocus required></li><br>
                            <li><label>????????</label><br><input type="password" id="PW" name="userPassword" size="43" placeholder=" 8~16?? ???? ?? ??????, ????, ????????"required></li><br>
                            <li><label>???????? ????</label><br><input type="password" id="PWchk" size="43" placeholder=" 8~16?? ???? ?? ??????, ????, ????????"required></li><br>
                            <li><label>????</label><br><input type="name" name="userName" id="name" size="43"required></li><br>
                            <li>							
                                <label>????</label><br>
                                <label class="btn btn-primary active">
                                    <input type="radio" name="userGender" autocomplete="off" value="????" checked><span>????</span>
                                </label>
                                <label class="btn btn-primary active">
                                    <input type="radio" name="userGender" autocomplete="off" value="????"><span>????</span>
                                </label>
                            </li>
                            <li><label>??????</label><br><input type="email" id="email" name="userEmail" size="43" class="userEmail"></li><br>
                        </ul>
                    </div>
                    <br>
                    <div class="btn">
                        <button class="btn1">????????</button> &nbsp;
                        <button class="btn2"><a href="main.html">????</a></button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>