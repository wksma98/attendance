<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-11-23
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./../../layout/layout2/top.jsp"%>

<h2>계정 정보를 입력해 주세요!</h2>
<form action="/joinUs.do" method="post">
    <div>
        <label for="userId">아이디: </label>
        <input id="userId" name="userId" type="text">
    </div>
    <div>
        <label for="password">패스워드: </label>
        <input id="password" name="password" type="password">
    </div>
    <div>
        <label for="userName">닉네임: </label>
        <input id="userName" name="userName" type="text">
    </div>

    <input type="submit" value="가입하기">
</form>
<%@include file="./../../layout/layout2/bottom.jsp"%>
</body>
</html>