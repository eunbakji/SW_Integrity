<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ڻ깫�Ἲ ����</title>
    <style>
    td a{
    	text-decoration:underline;
    	color:blue;
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
            	���Ἲ ���� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
	<%@ include file="navbar.jsp"%>
          <div class="right-container">
            <table class="detail-list">
              <tr>
                <td class="detail-title">������</td>
                <td>�����Ұ溸����_2020_1</td>
                <td class="detail-title">������</td>
                <td class="small-td">��ҿ�</td>
              </tr>
              <tr>
                <td class="detail-title">���˿���</td>
                <td>2020</td>
                <td class="detail-title">��������</td>
                <td class="small-td">08-28</td>
              </tr>
              <tr>
                <td class="detail-title">���˺б�</td>
                <td id="right">3�б�</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">���˼���</td>
                <td id="right">�����Ұ溸����</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">���˳���</td>
                <td id="right">�ش� �ڻ��� 8�� 28�� ������ ���Ἲ ���� ���˿��� ���Ἲ ���� ��ġ�� ���¸� �޾���</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
              <tr>
                <td class="detail-title">���˰��</td>
                <td id="right">����</td>
                <td class="small-td" id="side"></td>
                <td class="small-td" id="left"></td>
              </tr>
            </table>
            <div class="button_group" style="width:1100px;">
                <button type="button" id="modal_open_btn">����</button>
                <button type="button" id="modal_open_btn">����</button>
            </div>
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal1").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal1").attr("style", "display:none");
      });
      function modal(x,y){
            $("#modal"+x).attr("style", "display:none");
            $("#modal"+y).attr("style", "display:block");
      }
  </script>

</html>