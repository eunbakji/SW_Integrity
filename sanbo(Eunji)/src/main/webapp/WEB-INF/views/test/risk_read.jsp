<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
<header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	���� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
        <div class="right-container">
            <div class="danger-search">
              <h3>���� ���� ������ Ȯ���� �ڻ��� �����ϼ���</h3>
              <input type="text" name="" value="">
              <button type="button" name="button">ã��</button>
            </div>
              <table class="list" style="margin-top:0;">
                <tr>
                  <th style="width:30px;">id</th>
                  <th>�ڻ� ��</th>
                  <th>����</th>
                  <th>��������</th>
                  <th>�����ֱ�</th>
                </tr>
                <tr>
                  <td style="width:30px;">1</td>
                  <td>�����Ұ溸����</td>
                  <td>�����Ұ溸����_2020_1</td>
                  <td>2020.08.28</td>
                  <td>3�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">2</td>
                  <td>�ͺ������</td>
                  <td>�ͺ������_2020_2</td>
                  <td>2020.07.15</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">3</td>
                  <td>��������PC</td>
                  <td>��������PC_2020_2</td>
                  <td>2020.06.01</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">4</td>
                  <td>�ڵ�������������</td>
                  <td>�ڵ�������������_2020_2</td>
                  <td>2020.01.15</td>
                  <td>1�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">5</td>
                  <td>�ڵ�����������</td>
                  <td>�ڵ�����������_2020_1</td>
                  <td>2020.03.01</td>
                  <td>1�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">6</td>
                  <td>�ͺ������</td>
                  <td>�ͺ������_2020_1</td>
                  <td>2020.01.15</td>
                  <td>2�б�</td>
                </tr>
                <tr>
                  <td style="width:30px;">7</td>
                  <td>��������PC</td>
                  <td>��������PC_2020_2</td>
                  <td>2020.01.15</td>
                  <td>2�б�</td>
                </tr>
              </table>
        </div>
        <div class="button_group" style="width:1350px;">
          <a href="<c:url value="/risk/manage"/>"><button class="button" style="width:80px;">�������</button></a>
        </div>
  </body>

</html>