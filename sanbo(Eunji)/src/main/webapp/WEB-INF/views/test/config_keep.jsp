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
            	���� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
          <div class="right-container">
            <form class="center_form">
              <input type="search" name="" value="" placeholder="�˻��� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <table class="list">
              <tr>
                <th style="width:30px;">id</th>
                <th>�ڻ��</th>
                <th>�۾� ��û��</th>
                <th>��û����</th>
                <th>���ο���</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>�����Ұ溸����</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2019-02-24</td>
                <td><i class="fa fa-check"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>�ͺ������</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2020-08-28</td>
                <td><i class="fa fa-close"></i></td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>�ڵ�������������</td>
                <td><button type="button" class="detail-btn">�󼼺���</button></td>
                <td>2020-07-31</td>
                <td><i class="fa fa-check"></i></td>
              </tr>

            </table>

            <div class="button_group">
                <button type="button" id="modal_open_btn" style="width:80px;">�۾� ���</button>
            </div>
              <div id="modal1">
                <div class="modal_layer">
                <div class="middle_modal_content">
                  <div class="modal_title">
               	     �۾� ��û��
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>�ڻ��</span>
                    <select class="" name="" style="margin-left:20px;">
                      <option value="">�����Ұ溸����</option>
                    </select>
                  </p>
                  <p>
                    <span>��û��</span>
                    <input type="text" placeholder="Hanium"></input>
                  </p>
                  <p>
                    <span>��û����</span>
                    <input type="text" placeholder="2020-03-31" style="width:190px;"></input>
                  </p>
                  <p>
                    <span>�۾�����</span>
                    <input type="text" placeholder="2020-04-02" style="width:190px;"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">�۾� ����</span>
                    <select class="" name="">
                      <option value="">���α׷� ������Ʈ</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>�۾� ����</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="4" cols="40" placeholder="�����Ұ溸���� ���� ����Ʈ���� ������Ʈ �۾�"></textarea>
                  </div>
                  <p><span>�ʿ� ������</span></p>
                  <div class="textarea">
                    <textarea name="name" rows="2" cols="40" placeholder="�ڻ� ������Ʈ ����"></textarea>
                  </div>
                  <p><span>�޸�</span></p>
                    <textarea name="name" rows="2" cols="40" placeholder="."></textarea>
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
              	      �۾� ��û��
                  </div>
                    <form class="" action="index.html" method="post">
                  <p>
                    <span>�ڻ��</span>
                    <input type="text" placeholder="�����Ұ溸����"></input>
                  </p>
                  <p>
                    <span>��û��</span>
                    <input type="text" placeholder="Hanium"></input>
                  </p>
                  <p>
                    <span>��û����</span>
                    <input type="text" placeholder="2020-03-31" style="width:190px;"></input>
                  </p>
                  <p>
                    <span>�۾�����</span>
                    <input type="text" placeholder="2020-04-02" style="width:190px;"></input>
                  </p>
                  <p>
                    <span style="margin-right:15px;">�۾� ����</span>
                    <select class="" name="">
                      <option value="">���α׷� ������Ʈ</option>
                    </select>
                  </p>
                  <p></p>
                  <p><span>�۾� ���� ����</span></p>
                  <input type="text" style="width:300px;" value="�۾� ������ ��������� �����Ͽ����ϱ�?"></input>
                  <div style="margin:3px 0 6px 30%;">
                    <span>��<input type="checkbox"></span><span>�ƴϿ�<input type="checkbox" name="no2"></span>
                  </div>
                  <p><span>���� ���⵵ �˻�</span></p>
                  <div style="margin-left:10px;">
                  <p> 1.������� �м��Ͽ����ϱ�?<input style="float:right" type="checkbox"></p>
                  <p> 2.�����θ� �˻��Ͽ����ϱ�?<input style="float:right" type="checkbox"></p>
                  <p> 3.������ű�ݽü��� �����Ͽ����ϱ�?<input style="float:right" type="checkbox"></p>
                  <p> 4.��ġ ������ �����Ͽ����ϱ�?<input style="float:right" type="checkbox"></p>
                </div>
                  </form>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" id="submit" style="width:80px;">���οϷ�</button>
                  </div>
                </div>
              </div><!--modal layer-->
              </div><!--modal-->
        </div>
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