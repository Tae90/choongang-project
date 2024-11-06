<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Gothic+A1&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/5e485453d8.js" crossorigin="anonymous"></script>
   
    <title>Document</title>

    <script>
        $(document).ready(function () {
            $(".logout").mouseover(function () {
                $(".logout").css("background-color", "gray");
            });
            $(".logout").mouseout(function () {
                $(".logout").css("background-color", "#305346");
            });
        });

        $(document).ready(function () {
            $(".mypage").mouseover(function () {
                $(".mypage").css("background-color", "gray");
            });
            $(".mypage").mouseout(function () {
                $(".mypage").css("background-color", "#305346");
            });
        });




        $(document).ready(function () {
            $(".sns").mouseover(function () {
                $(".sns").css("background-color", "#b4b4b4");
            });
            $(".sns").mouseout(function () {
                $(".sns").css("background-color", "white");
            });
        });

        $(document).ready(function () {
            $(".mate").mouseover(function () {
                $(".mate").css("background-color", "#b4b4b4");
            });
            $(".mate").mouseout(function () {
                $(".mate").css("background-color", "white");
            });
        });


    </script>

    <style>
       
        .container {
            display: grid;
            grid-template-columns: 300px;
            grid-template-rows: 100px;
            height: auto;
            gap: 1rem;
        }

        /* 상단 부분 css */
        .head {
            grid-column: 1/3;
            grid-row: 1/2;
            background-color: #305346;
            position: sticky;
            top: 0;
            z-index: 1000;

        }

        .title {
            font-family: "Bangers", system-ui;
            font-style: normal;
            color: #cf3e00;
            font-size: 80px;
            text-decoration: none;
            margin-left: 100px;

        }

        /* 마이페이지 블럭 */
        .mypage {
            position: absolute;
            top: 8px;
            right: 300px;
            margin-top: 30px;
            height: 30px;
            width: 100px;
            border-width: 1px;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .mypage_text {
            color: #f4efe2;
            text-decoration: none;
            font-family: "Gothic A1", sans-serif;
            font-weight: 600;
            font-style: normal;

        }


        /* 로그아웃 블럭 */
        .logout {
            position: absolute;
            top: 8px;
            right: 150px;
            margin-top: 30px;
            height: 30px;
            width: 100px;
            border-width: 1px;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .logout_text {
            color: #f4efe2;
            text-decoration: none;
            font-family: "Gothic A1", sans-serif;
            font-weight: 600;
            font-style: normal;

        }


        /* 사이드 부분 css */
        .side {
            grid-column: 1/2;
            grid-row: 2/3;
            height: 800px;
            border-right-color: #b4b4b4;
            border-right-style: groove;
            border-right-width: 1px;
            border-left-color: #b4b4b4;
            border-left-style: groove;
            border-left-width: 1px;
            margin-left: auto;
            margin-right: auto;
            width: 200px;
            position: sticky;
            top : 0;
            right: 0;
        }

        /* sns 게시판 */
        .sns {
            margin-top: 200px;
            width: 180px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 5px;

        }

        .sns_text {
            color: black;
            text-decoration: none;
            font-family: "Gothic A1", sans-serif;
            font-weight: 600;
            font-style: normal;
            font-size: 22px;
        }

        /* 러닝메이트 게시판 */
        .mate {
            margin-top: 100px;
            width: 180px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 5px;
        }

        .mate_text {
            color: black;
            text-decoration: none;
            font-family: "Gothic A1", sans-serif;
            font-weight: 600;
            font-style: normal;
            font-size: 22px;
        }





        /* 메인콘텐츠 */
        .content {
            grid-column: 2/3;
            grid-row: 2/3;
            margin-right: 100px;
            height: 1000px;
            height: auto;
            
          
        }

        .track {
            margin-left: 50px;
            margin-top: 14px;
        }

        .locationbox {
            margin-top: 14px;
            margin-left: 50px;
        }

        

        

        /* 게시판 테이블 */

        table {
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
            width: 500px;
            margin-top: 50px;
            table-layout: fixed;
        }

        th,
        td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        tr:hover {

            background-color: #b4b4b4;
        }

        .col3{
            width: 80px;
        }

        

        

        select {
            width: 150px;
            padding: 6px 10px;
            font-size: 0.9rem;
            font-family: inherit;
            background: url('./img/icon-arrow-down.svg') no-repeat 95% 50%;
            background-size: 15px 15px;
            border: 1px solid #333;
            background-color: #fff;
            border-radius: 0;
            -webkit-appearance: none;
            /* 네이티브 외형 감추기 */
            -moz-appearance: none;
            appearance: none;
            outline: none;
        }

        select:focus {
            border-color: #0094e1;
        }

        .hotboard{
            float: left;
            width: 600px;
            height: 1000px;           
            margin-right: 10px;
        }

        .totalboard{
            float: right;
            width: 600px;
            height: 1000px;                
        }

        .hot_text{
            font-size: 24px;
            font-family: "Gothic A1", sans-serif;
            font-weight: 600;
            font-style: normal;
        }



    </style>










   
</head>

<body>
    <div class="container">
        <div class="head">
            <!-- 페이지 제목 누르면 메인페이지로 이동 -->
            <a href="asd" class="title">RUNAWAY</a>



            <!-- 마이페이지 버튼 -->
            <div class="mypage">
                <a href="dasd" class="mypage_text">마이페이지</a>
            </div>

            <!-- 로그아웃 버튼 -->
            <div class="logout">

                <a href="sadad" class="logout_text"> <i class="fa-solid fa-right-from-bracket"
                        style="color: #f4efe2;"></i>&nbsp;&nbsp;로그아웃</a>
            </div>

        </div>




        <div class="side" align="center">

            <div class="sns">

                <a href="snspage" class="sns_text"><i class="fa-solid fa-person-running"
                        style="font-size: 30px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;트랙</a>
            </div>

            <div class="mate">

                <a href="sdsa" class="mate_text"><i class="fa-solid fa-people-group"
                        style="font-size: 30px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;메이트</a>
            </div>
        </div>








        <div class="content">
            <div class="track">
                <span style="font-size: 36px; font-weight: 700;"></span><br><br>
                <span style="color: gray;"></span>
            </div>

            <div class="locationbox">

                <select>
                    <option value="">광역시선택</option>
                    <option value="서울시">서울시</option>
                </select>
                <select>
                    <option value="">지역선택</option>
                    <option value="강남구">강남구</option>
                    <option value="강남구">강동구</option>
                    <option value="강남구">강북구</option>
                    <option value="강남구">강서구</option>
                    <option value="강남구">관악구</option>
                    <option value="강남구">광진구</option>
                    <option value="강남구">구로구</option>
                    <option value="강남구">금천구</option>
                    <option value="강남구">노원구</option>
                    <option value="강남구">도봉구</option>
                    <option value="강남구">동대문구</option>
                    <option value="강남구">동작구</option>
                    <option value="강남구">마포구</option>
                    <option value="강남구">서대문구</option>
                    <option value="강남구">서초구</option>
                    <option value="강남구">성동구</option>
                    <option value="강남구">성북구</option>
                    <option value="강남구">송파구</option>
                    <option value="강남구">양천구</option>
                    <option value="강남구">영등포구</option>
                    <option value="강남구">용산구</option>
                    <option value="강남구">은평구</option>
                    <option value="강남구">종로구</option>
                    <option value="강남구">중구</option>
                    <option value="강남구">중랑구</option>
                </select><br><br>
            </div>

               
            <div style="display: flex; margin-left: 100px; margin-top: 50px;">
                <div class="hotboard">
                    <span class="hot_text">인기 트랙</span>
                    <a style="float: right; margin-top: 10px;" href="asd">더보기</a>
                    <table>
                        <colgroup>
                            <col class="col1">
                            <col class="col2">
                            <col class="col3">
                        </colgroup>
                        <tr>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>추천수</th>
                        </tr>

                        <tr>
                            <td>title</td>
                            <td>writer</td>
                            <td>good</td>
                        </tr>
                    </table>

                </div>

                <div style="height: 1000px; border-left: solid thin; margin-left: 100px; margin-right: 100px; color: #b4b4b4;"></div>

                <div class="totalboard">
                    <span class="hot_text">전체 글</span>
                    <a style="float: right; margin-top: 10px;" href="asd">더보기</a>
                    <table>
                        <colgroup>
                            <col class="col1">
                            <col class="col2">
                            <col class="col3">
                        </colgroup>
                        <tr>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>조회수</th>
                        </tr>

                        <tr>
                            <td>title</td>
                            <td>writer</td>
                            <td>good</td>
                        </tr>
                    </table>
                </div>
            </div>    


              

        </div>

    </div>
</body>

</html>