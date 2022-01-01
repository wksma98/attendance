<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-12-01
  Time: 오전 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>file upload</title>
</head>
<%@include file="../layout/layout2/top.jsp"%>
<body>

<h2>파일업로드</h2>

<div class="container">
    <form action="/fileinsert" method="post"
          enctype="multipart/form-data">
        <input type="file" name="files">
        <!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->

        <button type="submit" class="btn btn-dark">업로드</button>
        <%@include file="../layout/layout2/bottom.jsp"%>
    </form>
</div>
</body>
</html>