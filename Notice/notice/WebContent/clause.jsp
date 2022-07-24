<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
        <title>BE FREE</title>
        <style>
            body{
                background-color: #f5f6f7;
                font-family: 'Gowun Dodum', sans-serif;
            }
            ul {list-style-type: none; padding: 0;}
            input {
                /*float: left;*/
                height: 16px;
                width: 16px;
                margin-right: 13px;
            }
            a {text-decoration: none; 
                color: rgb(114, 114, 114);}
            .all {
                padding-top:15px;
                margin:0 auto;
                width:995px;
            }
            .name{
                margin: 70px 0px 0px 0px;
            }
            .logo{
                display: flex;
                /*position : relative;*/
                height: 100px;
                /*left: 32.3%;*/
                /*top: 70px;*/
                z-index: 10;
                margin: 0 auto;
            }
            .aa{
                height: 400px;
                /* background-color: #f5f6f7; */
                text-align: center;
                width: 600px;
                padding-top: 30px;
                 margin: 0 auto;
            }
            .login_menu > ul{
                display: inline-block;
            }
            .login_icon{
                width: 30px;
                float: left;
                margin-left: 62px;
            }
            h2{
                font-size: 20px;
                /* color: gray; */
                position: absolute;
                left: 110px;
                /*top: 236.2px; */
                /* right: 20%; */
                float: left;
                margin: 0px;
            }
            .aa li{  width: 550px; margin: 0 auto; padding: 5px;}

            /*.aa a:hover{ color:goldenrod;}*/

            .aa2{
                margin:0 auto;
                width:470px; 
                height: 38px;
                background-color: rgb(89, 161, 165);
                border-radius: 7px;
                position: relative;
                top: 70px;
                height: 50px;
                text-align: center;
                line-height: 50px;
                font-weight: bold;
                cursor: pointer;
                transition: all .25s;
                color: white;
                font-size:15px;
            }

            .id{
                border-radius: 7px 7px 0px 0px;
                width: 457px;
                height: 50px;
                border-color: #b8b8b8;
                box-shadow: none;
                border-style: solid;
            }
            .pw{
                border-radius: 0px 0px 7px 7px;
                width: 457px;
                height: 50px;
                border-color: #b8b8b8;
                box-shadow: none;
                border-style: solid;
            }

            .login_system{
                clear: both;
                position: relative;
                top: 30px;
            }
            
            .aa >u>a{
                color:gray;
                font-size:13px;
                position: relative;
                top: 70px;
            }
            u{
                position: relative;
                top: 70px;
            }

            .login_Provision{
                width: 600px;
                margin: 0 auto;
            }
            .aa li{
                width: 400px;
                font-size: 17px;
                font-weight: bold;
                padding: 20px 0px 0px 0px;
            }
            .txtarea1{
                width: 550px;
                height: 100px;
            }
            .txtarea2{
                width: 550px;
                height: 100px;
            }
            #txtarea{
                width: 560px;
                margin: 0 auto;
            }
            .delet{
                width: 250px;
                height: 38px;
                background-color: white;
                border: 0px solid;
                margin: 10px;
                font-size: 15px;
                font-weight: bold;
            }

        </style>        
        <script>
            $(function(){
                $('.agree').css({
                    'width': '250px',
                    'height': '38px',
                    'background-color': 'rgb(89, 161, 165)',
                    'border': '0px solid',
                    'margin': '10px',
                    'cursor': 'pointer',
                    'transition': 'all .25s',
                    'color': 'white',
                    'font-size': '15px',
                   'font-weight': 'bold',
                    'cursor': 'pointer',
                    'transition': 'all .25s'
                }).click(function(){
                    var terms1 = $(".chk_1").is(':checked');
                    var terms2 = $(".chk_2").is(':checked');
                    if (terms1 == true && terms2 == true) {
                        location.href = "join.jsp"
                    } else {
                        alert("�̿� ����� �������� ���� �� �̿뿡 ���� �ȳ��� ��� �������ּ���");
                    }
                });
            });
        </script>
    </head>
    <body>
        <div class="all">
        <header>
            <div class="name">
                <a href="main.jsp"><img class="logo" src="images/BE_FREE.png"></a>
            </div>
        </header>
        <!--<hr>-->

        <div class="aa">
            <form class="login_Provision">
                <fieldset>
                    <ul>
                        <li class="garo"><label class="check1" ><input type="checkbox" class="chk_1" required>HM �̿��� ����(�ʼ�)</label></li>
                        <li id="txtarea"><textarea rows="6" cols="80" class="txtarea1" placeholder=
                            "ȯ���մϴ�.
HM ���񽺸� �̿��� �ּż� �����մϴ�. �� ����� �پ��� HM ���񽺸� �̿�� �����Ͽ�, HM�� ����(�ش� ���� �̿��� ���ϴ� ��)�� ���踦 ��Ÿ���� ���� ����Դϴ�. HM�� ������ ȿ������ ������ ���� ���� ���񽺸� ������ ���� ����ϰ� �� �� �ʿ��� ��ǰ �������� �ִ��� ���� �����ϱ� ���� ����ϰڽ��ϴ�.
HM ���񽺸� �̿��Ͻðų� HM ���� ȸ������ �����Ͻ� ��� �������� �� ��� �� ���� � ��å�� Ȯ���ϰų� �����ϰ� �ǹǷ�, ��� �ð��� ���þ� ���� ��� ����� �ֽñ� �ٶ��ϴ�.

�پ��� HM ���񽺸� ��ܺ�����."
                            readonly></textarea></li>
                        <li class="garo"><label class="check2" ><input type="checkbox" class="chk_2" required>�������� ���� �� �̿뿡 ���� �ȳ�(�ʼ�)</label></li>
                        <li id="txtarea"><textarea rows="6" cols="80" class="txtarea2" placeholder="
������Ÿ��� ������ ���� HM�� ȸ������ ��û�Ͻô� �в� �����ϴ� ���������� �׸�, ���������� ���� �� �̿����, ���������� ���� �� �̿�Ⱓ�� �ȳ� �帮���� �ڼ��� ���� �� �����Ͽ� �ֽñ� �ٶ��ϴ�.

1. �����ϴ� ��������
�̿��ڴ� ȸ�������� ���� �ʾƵ� ���� �˻�, ���� ���� �� ��κ��� HM ���񽺸� ȸ���� �����ϰ� �̿��� �� �ֽ��ϴ�. �̿��ڰ� ����, Ķ����, ī��, ��α� ��� ���� ����ȭ Ȥ�� ȸ���� ���񽺸� �̿��ϱ� ���� ȸ�������� �� ���, HM�� ���� �̿��� ���� �ʿ��� �ּ����� ���������� �����մϴ�.

ȸ������ ������ HM�� �̿��ڷκ��� �����ϴ� ���������� �Ʒ��� �����ϴ�.
- ȸ�� ���� �ÿ� �����̵�, ��й�ȣ, �̸�, �������, ����, �޴���ȭ��ȣ���� �ʼ��׸����� �����մϴ�. ���� �̿��ڰ� �Է��ϴ� ��������� ��14�� �̸� �Ƶ��� ��쿡�� �����븮�� ����(�����븮���� �̸�, �������, ����, �ߺ�����Ȯ������(DI), �޴���ȭ��ȣ)�� �߰��� �����մϴ�. �׸��� �����׸����� �̸��� �ּ�, ������ ������ �����մϴ�.
- ��ü���̵�� ȸ������ �� ��ü���̵�, ��й�ȣ, ��ü�̸�, �̸����ּ�, �޴���ȭ��ȣ�� �ʼ��׸����� �����մϴ�. �׸��� ��ü ��ǥ�ڸ��� �����׸����� �����մϴ�." readonly></textarea></li>
                        <li class="garo"><label class="check3"><input type="checkbox" class="chk_3">�̺�Ʈ �� ���θ�� �˸� ���� ����(����)</label></li>
                    </ul>
                </fieldset>
            </form>
            <div>
                <a href="main.jsp"><button class="delet">���</button></a>
                <button class="agree">��� ������</button>
            </div>
        </div>
    </div>
    </body>
</html>