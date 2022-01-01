
<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-11-28
  Time: 오후 5:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<%@include file="../../layout/layout2/top.jsp"%>
<body>
<%
    Date nowTime = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    String time = sf.format(System.currentTimeMillis());
%>

                                <h2>Hello!</h2>
                                <div>학생 목록 생성</div>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <form action="/candidate/candidateCreateDB" method="post" enctype="multipart/form-data" >
                                                <div class="form-group">
                                                    <p>candidate_id :</p>
                                                    <input type="text" class="form-control" placeholder="Enter candidate_id" name="candidate_id" >
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_type :<p>
                                                    <input type="text" class="form-control"  placeholder="Enter candidate_type" name="candidate_type" >
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_recruit :</p>
                                                    <input type="text" class="form-control"  placeholder="Enter candidate_recruit" name="candidate_recruit">
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_birth</p>
                                                    <input type="text" class="form-control" placeholder="Enter candidate_birth" name="candidate_birth">
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_attend</p>
                                                    <input type="text" value="<%=time%>" class="form-control"  placeholder="Enter candidate_attend" name="candidate_attend">
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_ticket_photo</p>
                                                    <input type="file" class="form-control" placeholder="Enter candidate_ticket_photo" name="files">
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_issue</p>
                                                    <input type="text" class="form-control"placeholder="Enter candidate_issue" name="candidate_issue">
                                                </div>

                                                <div class="form-group">
                                                    <p>exam_id</p>
                                                    <input type="text" class="form-control" placeholder="Enter exam_id" name="exam_id">
                                                </div>

                                                <div class="form-group">
                                                    <p>exam_place_id</p>
                                                    <input type="text" class="form-control"  placeholder="Enter exam_place_id" name="exam_place_id">
                                                </div>

                                                <div class="form-group">
                                                    <p>candidate_exam_num</p>
                                                    <input type="text" class="form-control"  placeholder="Enter candidate_exam_num" name="candidate_exam_num">
                                                </div>

                                                <div class="form-group form-check">
                                                    <label class="form-check-label"> <input
                                                            class="form-check-input" type="checkbox" name="remember">
                                                        Remember me
                                                    </label>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
<%@include file="../../layout/layout2/bottom.jsp"%>
</body>
<script>

    window.onkeydown = function() {
        var kcode = event.keyCode;
        if(kcode == 116) {
            history.replaceState({}, null, location.port(8080));
        }
    }
</script>
</html>

