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
            <form class="center_form">
              <select class="select" name="">
                <option value="�ڻ��">�ڻ��</option>
              </select>
              <select class="select" name="">
                <option value="���˿���">���˿���</option>
              </select>
              <select class="select" name="">
                <option value="���˰��">���˰��</option>
              </select>
              <button type="button" name="button">�˻�</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">��ȣ</th>
                <th>������</th>
                <th>���˿���</th>
                <th>��������</th>
                <th>���˼���</th>
                <th>�����ֱ�</th>
                <th>������</th>
                <th>���˰��</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�ֱ޼�����_2020_1</a></td>
                <td>2020</td>
                <td>09-30</td>
                <td>�ֱ޼�����</td>
                <td>3�б�</td>
                <td>������</td>
                <td>����</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�����Ұ溸����_2020_1</a></td>
                <td>2020</td>
                <td>08-28</td>
                <td>�����Ұ溸����</td>
                <td>3�б�</td>
                <td>��ҿ�</td>
                <td>����</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�ͺ������_2020_2</a></td>
                <td>2020</td>
                <td>07-15</td>
                <td>�ͺ������</td>
                <td>2�б�</td>
                <td>�ּҿ�</td>
                <td>����</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">��������PC_2020_1</a></td>
                <td>2020</td>
                <td>03-02</td>
                <td>��������PC</td>
                <td>2�б�</td>
                <td>�ּҿ�</td>
                <td>����</td>
              </tr>
              <tr>
                <td style="width:30px;">5</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�ڵ�������������_2020_1</a></td>
                <td>2020</td>
                <td>06-01</td>
                <td>�ڵ�������������</td>
                <td>1�б�</td>
                <td>���س�</td>
                <td>����</td>
              </tr>
              <tr>
                <td style="width:30px;">6</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�ڵ�����������_2020_1</a></td>
                <td>2020</td>
                <td>03-01</td>
                <td>�ڵ�����������</td>
                <td>1�б�</td>
                <td>���س�</td>
                <td>������</td>
              </tr>
              <tr>
                <td style="width:30px;">7</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">�ͺ������_2020_1</a></td>
                <td>2020</td>
                <td>01-15</td>
                <td>�ͺ������</td>
                <td>2�б�</td>
                <td>�ּҿ�</td>
                <td>������</td>
              </tr>
              <tr>
                <td style="width:30px;">8</td>
                <td><a href="<c:url value="/integ/keep/detail"/>">��������PC_2020_1</a></td>
                <td>2020</td>
                <td>01-15</td>
                <td>��������PC</td>
                <td>2�б�</td>
                <td>�ּҿ�</td>
                <td>����</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">�߰�</button>
            </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                   	 ���Ἲ ���� ����
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>�ڻ��</span>
                    <select class="" name="" style="margin-left:20px;">
                      <option value="">�����Ұ溸����</option>
                    </select>
                  </p>
                  <p>
                    <span>������</span>
                    <input type="text" style="margin-left:20px;" placeholder="��ҿ�"></input>
                  </p>
                  <p>
                    <span>���˿���</span>
                    <input type="text" style="margin-left:5px;" placeholder="2020"></input>
                  </p>
                  <p>
                    <span>��������</span>
                    <input type="text" style="margin-left:5px;" placeholder="08-28"></input>
                  </p>
                  <p>
                    <span>���˺б�</span>
                    <select class="" name="" style="margin-left:5px;">
                      <option value="">3�б�</option>
                    </select>
                  </p>
                  <p><span>���˳���</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="38"></textarea>
                  </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" id="submit" onclick="modal(1,2)">����</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
              <div id="modal2">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
                    	���Ἲ ����
                  </div>
                    <form class="" action="index.html" method="post">
                  <div class="soft-text">
                  	�/������� �ؽ�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <div class="soft-text">
                	  ����ý��� �� ���� �ؽð� �Է�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <div class="soft-text">
                	  ��Ű����� �ؽð� �Է�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <div class="soft-text">
                  	�������� �ؽð� �Է�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <div class="soft-text">
                   	 �����Ͼ S/W �ؽ�
                  </div>
                  <input type="text" style="width:220px;"></input>
                  <button class="bluebtn">Ȯ��</button>
                  <p><span>H/W ���� ����</span></p>
                  <div style="margin:3px 0 6px 30%;">
                    <span>��<input type="checkbox"></span><span>�ƴϿ�<input type="checkbox" name="no2"></span>
                  </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="submit" >����</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
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