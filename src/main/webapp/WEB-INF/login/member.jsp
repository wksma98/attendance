<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-11-23
  Time: ���� 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./../../layout/layout2/top.jsp"%>

<h2>���� ������ �Է��� �ּ���!</h2>
<form action="/joinUs.do" method="post">
    <div>
        <label for="userId">���̵�: </label>
        <input id="userId" name="userId" type="text">
    </div>
    <div>
        <label for="password">�н�����: </label>
        <input id="password" name="password" type="password">
    </div>
    <div>
        <label for="userName">�г���: </label>
        <input id="userName" name="userName" type="text">
    </div>

    <input type="submit" value="�����ϱ�">
</form>
<%@include file="./../../layout/layout2/bottom.jsp"%>
</body>
</html>