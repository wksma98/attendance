<%--
  Created by IntelliJ IDEA.
  User: Dong Jae
  Date: 2021-11-16
  Time: 오전 5:01
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../../layout/layout2/top.jsp"%>
                             <h2>Hello!</h2>
                                <div>학생 목록 조회</div>
                            <div class="card">
                              <div class="card-body">
                                    <div class="table-responsive">
                                        <div>
                                            <a href="/candidate/candidateCreate"><button type="button" class="btn btn-primary">생성</button></a>
                                        </div>
                                        <table class="table" align="center">
                                            <thead>
                                                <tr align="center">
                                                    <th>아이디</th>
                                                    <th>전형</th>
                                                    <th>생년월일</th>
                                                    <th>출석시간</th>
                                                    <th>사진</th>
                                                    <th>출석상태</th>
                                                    <th>과목명</th>
                                                    <th>고사장소</th>
                                                    <th>수험번호</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <C:forEach items="${candidateList}" var="candidate">
                                                    <tr align="center">
                                                        <td>${candidate.candidate_id}</td>
                                                        <td>${candidate.candidate_type}</td>
                                                        <td>${candidate.candidate_birth}</td>
                                                        <td>${candidate.candidate_attend}</td>
                                                        <td><img src="resources/images/${candidate.candidate_photo}" style="width:200px;height:200px;"></td>
                                                        <td>${candidate.candidate_issue}</td>
                                                        <td>${candidate.exam_id}</td>
                                                        <td>${candidate.exam_place_id}</td>
                                                        <td>${candidate.candidate_exam_num}</td>
                                                    </tr>
                                                </C:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../../layout/layout2/bottom.jsp"%>
</body>
<script>
    window.onkeydown = function() {
        var kcode = event.keyCode;
        if(kcode == 116) {
            history.replaceState({}, null, location.pathname);
        }
    }
</script>
</html>
