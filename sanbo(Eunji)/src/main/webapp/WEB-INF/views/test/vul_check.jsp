<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ���� �׸�</title>
   <style>
   	.tall-tr{
   		height:45px;	
   	}
   </style>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	����� ���� �׸�
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
    <div class="right-container">
            <table class="list" style="width:1100px; margin-top:40px;">
              <tr>
                <th style="width:50px;">�о� ��ȣ</th>
                <th>���� <br>�о�</th>
                <th>�׸��ȣ</th>
                <th>�����׸�</th>
                <th>�߿䵵</th>
              </tr>
              
              <c:forEach var="vul" items="${vul}">
              <tr>
                <td style="width:50px;"><c:out value = "${vul.field_num }"/></td>
                <td><c:out value = "${vul.field }"/></td>
                <td><c:out value = "${vul.item_num }"/></td>
                <td><c:out value = "${vul.item }"/></td>
                <td><c:out value = "${vul.importance}"/></td>
              </tr>
              
              </c:forEach>
             
            </table>
              <div class="button_group" style="width:1100px; margin-top:-15px;">
                  <button type="button" id="modal_open_btn" style="width:110px;">�����׸� ���</button>
              </div>
                <div id="modal">
                  <div class="modal_layer">
                  <div class="small_modal_content">
                    <div class="modal_title">
                     	 �����׸� ���
                    </div>
                      <form class="" action="index.html" method="post">
                    <p>
                      <span>���˺о� ��ȣ</span>
                    </p>
                      <input type="text" placeholder="1.1"></input>
                    <p>
                      <span>���˺о�</span>
                    </p>
                      <input type="text" placeholder="��������"></input>
                    <p>
                      <span>�����׸� ��ȣ</span>
                    </p>
                      <input type="text" placeholder="11.1"></input>
                      <p>
                        <span>�����׸� �߿䵵</span>
                      <select class="" name="">
                        <option value="">��</option>
                      </select>
                    </p>
                      <p>
                        <span>�����׸� ����</span>
                      </p>
                      <textarea name="name" rows="8" cols="35"></textarea>
                    </form>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">���</button>
                      <button type="button" id="submit">���</button>
                    </div>
                  </div>
                </div><!--modal layer-->
              </div><!--modal-->
        </div>
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