<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-11-26
  Time: ¿ÀÀü 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/layout/layout2/top.jsp"%>
<h2>Hello!</h2>
<div>userDB List Test</div>
<table class="table table-bordered" style="width:80%" align="center">
    <colgroup>
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
    </colgroup>
    <tr align="center">
        <th>user_id</th>
        <th>user_name</th>
        <th>user_password</th>
        <th>user_role</th>

    </tr>
    <C:forEach items="${userList}" var="user">
        <tr align="center">
            <td>${user.user_id}</td>
            <td>${user.user_name}</td>
            <td>${user.user_password}</td>
            <td>${user.user_role}</td>
        </tr>
    </C:forEach>
</table>
<%@include file="/layout/layout2/bottom.jsp"%>
</body>
</html>