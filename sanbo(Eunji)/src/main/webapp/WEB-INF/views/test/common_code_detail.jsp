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
            	�����ڵ� ����(���ڵ� ���)
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
            <div class="right-container">
            <form class="center_form" style="margin-top:10px;">
              <select class="select" name="">
                <option value="���ڵ�">���ڵ�</option>
              </select>
              <input type="search" name="" value="" placeholder="�˻��� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/common/code"/>"><button type="button" name="button" class="white" >��ǥ�ڵ�</button></a>
              <a href="<c:url value="/common/code/detail/1"/>"><button type="button" name="button" style="margin-left:-5px;">���ڵ�</button></a>
              <a><button type="button" name="button" style="float:right;" id="modal_open_btn">���ڵ� ���</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th style="width:30px;">id</th>
                <th>���ڵ�</th>
                <th>���ڵ��</th>
                <th>��뿩��</th>
                <th>��ǥ�ڵ�</th>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">1</td>
                <td>A1_1</td>
                <td>PLC/DCS</td>
                <td>O</td>
                <td>A1</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">2</td>
                <td>A1_2</td>
                <td>PC/Server</td>
                <td>O</td>
                <td>A1</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">3</td>
                <td>A2_1</td>
                <td>WinXP</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">4</td>
                <td>A2_2</td>
                <td>Win 2000</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">5</td>
                <td>A2_3</td>
                <td>Win 2003</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">6</td>
                <td>A2_4</td>
                <td>Win Vista</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">7</td>
                <td>A2_5</td>
                <td>Win7</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">8</td>
                <td>A2_6</td>
                <td>Win8</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">9</td>
                <td>A2_7</td>
                <td>Win 2008</td>
                <td>O</td>
                <td>A2</td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" ></td>
                <td style="width:30px;">10</td>
                <td>A2_8</td>
                <td>Win 20012</td>
                <td>O</td>
                <td>A2</td>
              </tr>
            </table>
            <div class="button_group">
              <div class="center-page">
                <span><a href="<c:url value="/common/code/detail/1"/>">1</a></span>
                <span><a href="<c:url value="/common/code/detail/2"/>" style="color:#dbdbdb;">2</a></span>
              </div>
                <button type="button" id="modal_open_btn">����</button>
            </div>
              <div id="modal">
                <div class="modal_layer">
                <div class="small_modal_content">
                  <div class="modal_title">
                   	 ���ڵ� ���
                  </div>
                    <form class="" action="index.html" method="post">
                  <table style="margin-left:20px;">
                    <tr>
                      <th style="text-align: left">��ǥ�ڵ�</th>
                      <th style="text-align: left; padding-left:50px;">��ǥ�ڵ��</th>
                    </tr>
                    <tr>
                      <td>
                          <select class="" name="" style="width:100px; padding-left:30px;">
                            <option value="" >A1</option>
                            <option value="" >A2</option>
                          </select>
                      </td>
                      <td><input type="text" placeholder="��������" style="width:100px;margin-left:50px;"></input></td>
                  </table>
                  <p>
                    <span>���ڵ�</span>
                  </p>
                    <input type="text" placeholder="A1_1"></input>
                  <p>
                    <span>���ڵ��</span>
                  </p>
                  <input type="text" placeholder="PLC/DCS"></input>
                  <p><span>��뿩��</span></p>
                    <div class="modal_inner">
                      <span>��</span>
                      <label><input type="checkbox"></label>
                      <span>�ƴϿ�</span>
                      <label><input type="checkbox"></label>
                    </div>
                    <div class="modal_button" style="width:300px;">
                      <button type="button" id="modal_close_btn">���</button>
                      <button type="button" id="submit">���</button>
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