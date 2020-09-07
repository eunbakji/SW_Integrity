<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>형상관리</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>산업제어시스템</p>
            <p>SW관리 프로그램</p>
          </div>
          <div class="menu">
            	공통코드 관리(상세코드 등록)
          </div>
          <div class="login">
            Admin님
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
            <div class="right-container">
            <form class="center_form" style="margin-top:10px;">
              <select class="select" name="">
                <option value="상세코드">상세코드</option>
              </select>
              <input type="search" name="" value="" placeholder="검색어 입력">
              <button type="button" name="button">검색</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/common/code"/>"><button type="button" name="button" class="white" >대표코드</button></a>
              <a href="<c:url value="/common/code/detail/1"/>"><button type="button" name="button" style="margin-left:-5px;">상세코드</button></a>
              <a><button type="button" name="button" style="float:right;" id="modal_open_btn">상세코드 등록</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th style="width:30px;">id</th>
                <th>상세코드</th>
                <th>상세코드명</th>
                <th>사용여부</th>
                <th>대표코드</th>
              </tr>
              
              <c:forEach var="code" items="${code }">
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;"><c:out value = "${code.id }"/></td>
                <td><c:out value = "${code.detailc }"/></td>
                <td><c:out value = "${code.detailc_n }"/></td>
                <td><c:out value = "${code.use }"/></td>
                <td><c:out value = "${code.reprec }"/></td>
              </tr>
              </c:forEach>

            </table>
            <div class="button_group">
              <div class="center-page">
                <span><a href="<c:url value="/common/code/detail/1"/>">1</a></span>
                <span><a href="<c:url value="/common/code/detail/2"/>" style="color:#dbdbdb;">2</a></span>
              </div>
                <button type="button" id="modal_open_btn">수정</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="small_modal_content">
                  <div class="modal_title">
                   	 상세코드 등록
                  </div>
                    <form class="" action="index.html" method="post">
                  <table style="margin-left:20px;">
                    <tr>
                      <th style="text-align: left">대표코드</th>
                      <th style="text-align: left; padding-left:50px;">대표코드명</th>
                    </tr>
                    <tr>
                      <td>
                          <select class="" name="" style="width:100px; padding-left:30px;">
                            <option value="" >A1</option>
                            <option value="" >A2</option>
                          </select>
                      </td>
                      <td><input type="text" placeholder="설비유형" style="width:100px;margin-left:50px;"></input></td>
                  </table>
                  <p>
                    <span>상세코드</span>
                  </p>
                    <input type="text" placeholder="A1_1"></input>
                  <p>
                    <span>상세코드명</span>
                  </p>
                  <input type="text" placeholder="PLC/DCS"></input>
                  <p><span>사용여부</span></p>
                    <div class="modal_inner">
                      <span>예</span>
                      <label><input type="checkbox"></label>
                      <span>아니요</span>
                      <label><input type="checkbox"></label>
                    </div>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">취소</button>
                      <button type="button" id="submit">등록</button>
                    </div>
                  </form>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
        </section>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
  </script>
  
</html>