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
            <div class="danger-select">
              <h3>���� ���� ������ Ȯ���� �ڻ��� �����ϼ���</h3>
              <select class="select" name="">
                <option value="�ͺ����PLC">�ڵ�����������</option>
              </select>
              <button type="button" name="button">����</button>
            </div>
            <table class="danger-list1">
              <tr>
                <td style="border-right:none;">  (�ڵ�����������)�� ���� ���� ������</td>
                <td style="border-left:none;" ></td>
              </tr>
              <tr>
                <td class="small-td">��������</td>
                <td><input type="text" name="" value="�������� �Է�"></td>
              </tr>
              <tr>
                <td class="small-td">����</td>
                <td>
                <select class="" name="">
                  <option value="">�ͺ������_2020_1</option>
                  <option value="">�ͺ������_2020_2</option>
                  <option value="">�� ���� �߰�</option>
                </select>
              </td>
              </tr>
              <tr>
                <td class="small-td">�����ֱ�</td>
                <td><input type="text" name="" value="�����ֱ� �Է�"></td>
              </tr>
            </table>
            <table class="danger-list1" style="border-top:none;">
              <tr>
                <td style="border-top:none; border-bottom:none; text-align: center;">����� ���� �׸� ���� ���� �˻�</td>
              </tr>
              </table>
              <table class="danger-list2">
              <tr>
                <th class="small-td">�о߹�ȣ</th>
                <th>���˺о�</th>
                <th class="small-td">�׸��ȣ</th>
                <th>�����׸�</th>
                <th class="small-td">�߿䵵</th>
                <th>���࿩��</th>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>��������</td>
                <td class="small-td">1.1</td>
                <td>�ʼ��������ڻ� ���� ����(����, ���, ����, �ҿ� �� ���� ����) �� ����ȭ�� �ϰ� �ִ°�?</td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>��������</td>
                <td class="small-td">1.2</td>
                <td>���������� ���� �� �̿� ���� �ʼ��������ڻ� ������ <br>�ҹ����� ��� �� ���� ���ο� ���� �ֱ��� ���並 �ϰ� �ִ°�?(�ּ� �б� 1ȸ)</td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>��������</td>
                <td class="small-td">1.3</td>
                <td>�־��� ������ �����ϴµ� �ʿ��� ��ŭ�� ���ѵ� ���ٱ����� �� ������ �ο��ϰ� �ִ°�?</td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
              <tr>
                <td class="small-td">1.1</td>
                <td>��������</td>
                <td class="small-td">1.4</td>
                <td>������ ���� �� ������ ���� ���ٱ��� ���並 ���� <br>������ ����� ���ѵ� ���ٱ����� �ο��ǰ� ������ �����ϰ� �ִ°�?</td>
                <td class="small-td">��</td>
                <td><select class="yn-select" name="">
                  <option value="Y">Y</option>
                  <option value="N">N</option>
                </select></td>
              </tr>
            </table>
            <div class="big_button_group">
              <a href="#"><button class="button">�Ϸ�</button></a>
            </div>
        </div>
  </body>

</html>