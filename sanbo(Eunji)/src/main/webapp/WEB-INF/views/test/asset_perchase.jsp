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
            	�ڻ� ����
          </div>
          <div class="login">
            Admin��
          </div>
        </div>
      </header>
<%@ include file="navbar.jsp"%>
	<div class="right-container">
            <form class="center_form" style="margin-top:60px;">
              <input type="search" name="" value="" placeholder="�ڻ�� �Է�">
              <button type="button" name="button">�˻�</button>
            </form>
            <div class="tab-group">
              <a href="<c:url value="/asset/perchase/desc"/>"><button type="button" name="button" class="white" >�ֽż�</button></a>
              <a href="<c:url value="/asset/perchase/asc"/>"><button type="button" name="button" style="margin-left:-5px;">������ ��</button></a>
            </div>
            <hr>
            <table class="list" style="margin-top:30px;">
              <tr>
                <th style="width:30px;">Id</th>
                <th>�ڻ��</th>
                <th>��� ����</th>
                <th>����� ����<br>�׸� ���˿���</th>
                <th>Secure coding <br>���뿩��</th>
                <th>����� <br>üũ ����</th>
                <th>���Ἲ ����<br> ��� ž��</th>
                <th>���� �Ѽ�</th>
                <th>���/���� ����</th>
                <th>����Ȯ��</th>
              </tr>
              <tr>
                <td style="width:30px;">1</td>
                <td>�ֱ޼�����</td>
                <td>2020-03-28</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">2</td>
                <td>�����Ұ溸����</td>
                <td>2020-03-30</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">3</td>
                <td>������������</td>
                <td>2020-03-31</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>X</td>
              </tr>
              <tr>
                <td style="width:30px;">4</td>
                <td>�������ð���</td>
                <td>2020-04-15</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">5</td>
                <td>�ڵ�������������</td>
                <td>2020-04-30</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">6</td>
                <td>�ͺ��������������PC</td>
                <td>2020-05-05</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
              <tr>
                <td style="width:30px;">7</td>
                <td>�������������</td>
                <td>2020-05-31</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
                <td>O</td>
              </tr>
            </table>

            <div class="button_group">
                <button type="button" style="width:100px;" id="modal_open_btn">�ű� �ڻ� ���</button>
            </div>
            <div id="modal0">
              <div class="modal_layer">
              <div class="small_modal_content">
                <div class="modal_title">
       	           �ڻ��
                </div>
                  <form class="" action="index.html" method="post">
                    <p>
                      <span>�ڻ��</span>
                    </p>
                      <input type="text" placeholder="�ֱ޼�����"></input>
                <p>
                  <span>��������</span>
                </p>
                  <select class="" name="" style="margin-left:20px;">
                    <option value="">PLC/DCS</option>
                    <option value="">PC/Server</option>
                  </select>
                <p>
                  <span>OS����</span>
                </p>
                <select class="" name="" style="margin-left:20px;">
                  <option value="">WinXP</option>
                  <option value="">Win 2000</option>
                  <option value="">Win 2003</option>
                  <option value="">Win Vista</option>
                  <option value="">Win7</option>
                </select>
                <p>
                  <span>������</span>
                </p>
                <input type="text" placeholder="������"></input>
                  <div class="modal_button" style="width:300px;">
                    <button type="button" id="modal_close_btn">���</button>
                    <button type="button" onclick="modal(0,1,0)">���</button>
                  </div>
                </form>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal1">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
            	     �ڻ� ���� �׸� ����-[����� ���� �׸�]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�о߹�ȣ</th>
                    <th>���˺о�</th>
                    <th>�׸� ��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>W1</td>
                    <td>���� ����</td>
                    <td>1.1</td>
                    <td class="long-td">Administrator ���� �̸��� �ٲپ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td">������ �׷쿡 �ּ����� ����� �����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td>W2</td>
                    <td>�α� ����</td>
                    <td>2.1</td>
                    <td class="long-td">�α��� ������ ���� �� ���� �Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td">�������� �׼����� �� �ִ� ������Ʈ�� ��� Ȯ���� �ߴ°�?</td>
                    <td><span>Y<input type="checkbox" ></span><span>N<input type="checkbox" name="no1"></span></td>
                  </tr>
                </table>
                <!--���� ���� �� N�� ������ �Ѿ�� �ȵ�-->
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(1,2,0)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal2">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
                 	 �ڻ� ���� �׸� ����-[���Ἲ ���� ��� ž�� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td class="long-td">���Ἲ ���� ����� ž���� �ڻ��ΰ�?</td>
                    <td><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no2"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button"class="continue" onclick="modal(2,3,0)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal3">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
              	    �ڻ� ���� �׸� ����-[Secure Coding ���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�׸��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td class="long-td">���α׷��� ��� ������ ���� ��ο� ���ؼ� ������� �˻����� �ʰų�,�ҿ����ϰ� �˻��Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td class="long-td">SW�� �߿��� ���� ���� �ڿ��� ���Ͽ� �б� �Ǵ� �����ϱ� ������ �ǵ����� �ʰ� �㰡�Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td class="long-td">����� ��ȣȭ �˰����� ����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td class="long-td">�߿������� Plain Text�� �����Ͽ��°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td class="long-td">Hardcoding�� �н����带 ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td class="long-td">�������� ���� ���� ���� ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td class="long-td">�߿� �������� �������� ��Ű�� ����ǰų� ��Ű ���� �ð��� �� ���ΰ�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td class="long-td">��Ʈ ���� �ܹ��� �ؽ��Լ��� ����ϰ� �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>9</td>
                    <td class="long-td">�������� �ҽ��ڵ� �Ǵ� ���������� ���Ἲ �˻� ���� �ٿ�޴°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                  <tr>
                    <td>10</td>
                    <td class="long-td">�ݺ��� ���� �õ� ���� ����� ���°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no3"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(3,4,10)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal4">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
          	       �ڻ� ���� �׸� ����-[�ű� ����� �� �Ǽ��ڵ� ���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>���˺о�</th>
                    <th>�׸� ��ȣ</th>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td>�����</td>
                    <td>1.1</td>
                    <td class="long-td"><strong>�޸� �浹</strong> ������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.2</td>
                    <td class="long-td"><strong>SQL Injection</strong> ������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.3</td>
                    <td class="long-td"><strong>���� �ź� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.4</td>
                    <td class="long-td"><strong>���� ��� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>1.5</td>
                    <td class="long-td"><strong>���� ���� </strong>������� �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td>�Ǽ��ڵ�</td>
                    <td>2.1</td>
                    <td class="long-td"><strong>��(Worm) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.2</td>
                    <td class="long-td"><strong>��Ʈ ��(Rootkits) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.3</td>
                    <td class="long-td"><strong>Ʈ���̸�(Trojan horse) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.4</td>
                    <td class="long-td"><strong>��������(Ransomware)) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>2.5</td>
                    <td class="long-td"><strong>Ʈ������(Trapdoor) </strong>�Ǽ��ڵ尡 �����ϴ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes"></span><span>N<input type="checkbox" name="no4"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(4,5,10)">����ϱ�</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal5">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
           		       �ڻ� ���� �׸� ����(��������)-[���� �Ѽ� ���� Ȯ��]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th>�����׸�</th>
                    <th>���� ����</th>
                  </tr>
                  <tr>
                    <td class="long-td">���� ó�� �� �ڻ� �Ѽյ� ������ �ִ°�?</td>
                    <td><span>Y<input type="checkbox" name="yes2"></span><span>N<input type="checkbox" name="no5"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(5,6,1)">����ϱ�</button>
                  <button type="button" onclick="closebtn(5)" style="width:80px;">���� ó��</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
            <div id="modal6">
              <div class="modal_layer">
              <div class="modal_content">
                <div class="modal_title">
               	   �ڻ� ���� �׸� ����(��������)-[���/���� ����]
                </div>
                <table class="modal_basic_table">
                  <tr>
                    <th style="width:30px;">�׸� ��ȣ</th>
                    <th>���� �о�</th>
                    <th>�����׸�</th>
                    <th style="width:70px;">���� ����</th>
                  </tr>
                  <tr>
                    <td style="width:30px;">1</td>
                    <td>��Ʈ��ũ <br>�߰�</td>
                    <td class="long-td">���������̰ų� ������ ���� ��� �����Ͱ� ���ԵǴ� ��쿡�� ���,����,����͸� ����  <br>�ʼ� ���񽺸� �����ϴ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">2</td>
                    <td>����  <br>���Ӽ�</td>
                    <td class="long-td">���� ���Ӽ� Ȯ���� ���� ����� ���������� �����ǰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">3</td>
                    <td>���ȱ��</td>
                    <td class="long-td">�ĺ�/����,��������,���� �� ���� ������ ��ȣ �� ���ȼ� Ȯ���� ����  <br>���ȱ���� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">4</td>
                    <td>������ġ <br> ����</td>
                    <td class="long-td">���� ����Ʈ����κ��� ����� �޾� ���� ��ġ�� �����ϴ� ������ ���������� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">5</td>
                    <td>���� ����</td>
                    <td class="long-td">���� ����Ʈ����κ��� ����� �޾� ���� ��ġ�� �����ϴ� ������ ����� �����ϰ� �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                  <tr>
                    <td style="width:30px;">6</td>
                    <td>� ����</td>
                    <td class="long-td">���� �ϵ����� ����ϸ� ���� ��ġ�� ���¸� ����͸��ϰ� <br> ���� ����� ���������� ������ �ִ°�?</td>
                    <td style="width:70px;"><span>Y<input type="checkbox"></span><span>N<input type="checkbox" name="no6"></span></td>
                  </tr>
                </table>
                <div class="modal_button">
                  <button type="button" class="continue" onclick="modal(6,0,0)">�Ϸ��ϱ�</button>
                  <button type="button" onclick="closebtn(6)" style="width:80px;">���� ó��</button>
                </div>
              </div>
            </div><!--modal layer-->
            </div><!--modal-->
        </div>
  </body>
  <script>
      $("#modal_open_btn").click(function(){
          $("#modal0").attr("style", "display:block");
      });

       $("#modal_close_btn").click(function(){
          $("#modal5").attr("style", "display:none");
      });
    function openbtn(){
      $("#modal1").attr("style", "display:block");
    }
    function closebtn(x){
      $("#modal"+x).attr("style", "display:none");
    }

    function modal(x,y,z){
      //if($("input[name=no"+x+"]:checked").length==z){
        if(x==6){
          $("#modal"+x).attr("style", "display:none");
        }else{
          $("#modal"+x).attr("style", "display:none");
          $("#modal"+y).attr("style", "display:block");
        }
      /*}else{
        if(x==1 || x==3 || x==4){
          alert(" *���� �׸� ������ ��� ������ �� �����ϴ�.\n������ �׸��� ���޻� ���� ������ �� ��� �����ϼ���.");
        }else if(x==2){
          alert(" *���� Ȯ���� ������ �� �����ϴ�.\n ���Ἲ ���� ����� ������ �� ���� Ȯ���� �� �ֽ��ϴ�.");
        }else if(x==5 || x==6){
          alert(" *������ �ý��� �����ҿ� ������ �� �����ϴ�\n������ �ý��� ������ ���� ó�� ���ֽñ� �ٶ��ϴ�.");
        }
      }*/
    }
    $("input[name=no1]").click(function(){
       alert(" *���� �׸� ������ ��� ������ �� �����ϴ�.\n������ �׸��� ���޻� ���� ������ �� ��� �����ϼ���.");
   });
   $("input[name=no2]").click(function(){
     alert(" *���� Ȯ���� ������ �� �����ϴ�.\n ���Ἲ ���� ����� ������ �� ���� Ȯ���� �� �ֽ��ϴ�.");
  });
     $("input[name=yes]").click(function(){
        alert(" *���� �׸� ������ ��� ������ �� �����ϴ�.\n������ �׸��� ���޻� ���� ������ �� ��� �����ϼ���.");
    });

    $("input[name=yes2]").click(function(){
       alert(" *������ �ý��� �����ҿ� ������ �� �����ϴ�.\n������ �ý��� ������ ���� ó�� ���ֽñ� �ٶ��ϴ�.");
   });

     $("input[name=no6]").click(function(){
        alert(" *������ �ý��� �����ҿ� ������ �� �����ϴ�\n������ �ý��� ������ ���� ó�� ���ֽñ� �ٶ��ϴ�.");
    });
  </script>
  
</html>