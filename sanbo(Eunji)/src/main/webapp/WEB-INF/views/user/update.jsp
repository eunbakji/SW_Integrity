<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
   <section>
      <h2 class="text-center">ȸ������ ����</h2>
      <form class="login-form" name=form1 action="<c:url value="/user/update/"/>" method="post">
        <input class="form-input" name="id" value="${user.id }" hidden>
        <div class="form-text">
          name
        </div>
        <input class="form-input" type="text" name="name" value="${user.name }">
        <div class="form-text">
          Password
        </div>
        <input class="form-input" type="password" name="passwd" value="${user.passwd}">
        <a href="#"><button class="button" type="submit" name="button">�����ϱ�</button></a>
      </form>
  </section>
</body>
</html>