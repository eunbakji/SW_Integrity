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
            	�ڻ� ���Ἲ ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
        <div class="right-container">
            <form class="center_form" >
              <input type="search" name="" value="" placeholder="�ڻ�� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/asset/integ/2"/>"><button type="button" name="button" class="white">PLC</button></a>
              <a href="<c:url value="/asset/integ/1"/>"><button type="button" name="button" style="margin-left:-5px;">PC/Server</button></a>
            </div>
            <hr>
            <table class="list">
              <tr>
                <th style="width:15px;"></th>
                <th>�ڻ��</th>
                <th>��������</th>
                <th>OS����</th>
                <th>���Ἲ <br>���� ��� <br>���� ����</th>
                <th>�ϵ����<br> ���� ���� ����</th>
                <th>�/�������<br> �ؽ� �� �Է�</th>
                <th>�����Ͼ S/W<br>�ؽ� �� �Է�</th>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(1)"></td>
                <td>�����Ұ溸����</td>
                <td>PC</td>
                <td>Win 7</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="8ab2630ada4" name="input[1][1]" disabled></td>
                <td><input type="text" placeholder="8ab2630ada4"  name="input[1][2]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(2)"></td>
                <td>�������ð���</td>
                <td>PC</td>
                <td>Win XP</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="b94a005a0c5"  name="input[2][1]" disabled></td>
                <td><input type="text" placeholder="b94a005a0c5"  name="input[2][2]" disabled></td>
              </tr>
              <tr>
                <td style="width:15px;"><input type="checkbox" name="check" onclick="check(3)"></td>
                <td>�ͺ��������������PC</td>
                <td>PC</td>
                <td>Win 2003</td>
                <td>O</td>
                <td>O</td>
                <td><input type="text" placeholder="970320c68c4" name="input[3][1]" disabled></td>
                <td><input type="text" placeholder="970320c68c4" name="input[3][2]" disabled></td>
              </tr>
            </table>
            <div class="button_group">
                <button type="button" id="modal_open_btn">����</button>
            </div>
            </div><!--right-container-->
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal").attr("style", "display:none");
      });
      function check(x){
  		if($("input[name=check]").is(":checked")){ 
    			document.getElementsByName('input['+x+'][1]')[0].removeAttribute("disabled");
    			document.getElementsByName('input['+x+'][2]')[0].removeAttribute("disabled");
   		}else {
   			document.getElementsByName('input['+x+'][1]')[0].setAttribute("disabled",true);
   			document.getElementsByName('input['+x+'][2]')[0].setAttribute("disabled",true);
   		}
   		
   	}
  </script>
  
</html>