<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������</title>
</head>
<body>
      <header>
        <div class="top">
          <div class="home">
            <p>�������ý���</p>
            <p>SW���� ���α׷�</p>
          </div>
          <div class="menu">
            	�����ڵ� ����
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
                <option value="���ڵ�">���ڵ�</option>
              </select>
              <input type="search" name="" value="" placeholder="�˻��� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/common/code"/>"><button type="button" name="button">��ǥ�ڵ�</button></a>
              <a href="<c:url value="/common/code/detail/1"/>"><button type="button" name="button" class="white" style="margin-left:-5px;">���ڵ�</button></a>
              <a><button type="button" name="button" style="float:right;" id="modal_open_btn">��ǥ�ڵ� ���</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th style="width:30px;">id</th>
                <th>��ǥ�ڵ�</th>
                <th>��ǥ�ڵ��</th>
                <th>��뿩��</th>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">1</td>
                <td>A1</td>
                <td>��������</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">2</td>
                <td>A2</td>
                <td>OS����</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">3</td>
                <td>A3</td>
                <td>���Ἲ���</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">4</td>
                <td>A4</td>
                <td>PLC/DCS S/W ���Ἲ ���</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">5</td>
                <td>A5</td>
                <td>PLC/DCS ���� ���Ἲ ���</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">6</td>
                <td>A6</td>
                <td>PC/Server S/W ���Ἲ ���</td>
                <td>O</td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button">����</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="small_modal_content">
                  <div class="modal_title">
                   	 ��ǥ�ڵ� ���
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>�ڵ��ȣ</span>
                  </p>
                    <input type="text" placeholder=""></input>
                  <p>
                    <span>�ڵ��</span>
                  </p>
                    <input type="text" placeholder=""></input>
                  <p><span>��뿩��</span></p>
                    <div class="modal_inner">
                      <span>��</span>
                      <label><input type="checkbox"></label>
                      <span>�ƴϿ�</span>
                      <label><input type="checkbox"></label>
                    </div>
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