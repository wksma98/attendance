<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<c:url value='/static/vendors/feather/feather.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/vendors/mdi/css/materialdesignicons.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/vendors/ti-icons/css/themify-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/vendors/typicons/typicons.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/vendors/simple-line-icons/css/simple-line-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/vendors/css/vendor.bundle.base.css'/>">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="<c:url value='/static/vendors/datatables.net-bs4/dataTables.bootstrap4.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/js/select.dataTables.min.css'/>">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<c:url value='/static/css/vertical-layout-light/style.css'/>">
    <!-- plugins:js -->
    <script src="<c:url value='/static/vendors/js/vendor.bundle.base.js'/>"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="<c:url value='/static/vendors/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='/static/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js'/>"></script>
    <script src="<c:url value='/static/vendors/progressbar.js/progressbar.min.js'/>"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<c:url value='/static/js/off-canvas.js'/>"></script>
    <script src="<c:url value='/static/js/hoverable-collapse.js'/>"></script>
    <script src="<c:url value='/static/js/template.js'/>"></script>
    <script src="<c:url value='/static/js/settings.js'/>"></script>
    <script src="<c:url value='/static/js/todolist.js'/>"></script>
    <script src="<c:url value='/static/dist/js/pages/dashboard.js'/>"></script>
</head>
<body class="sidebar-light sidebar-icon-only">
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
            <div class="me-3">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
                    <span class="icon-menu"></span>
                </button>
            </div>
            <div class="sidebar-mini">
                <a class="navbar-brand" href="/welcome">
                    <h2>Admin</h2></a>
            </div>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-top">
            <ul class="navbar-nav">
                <li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
                    <h1 class="welcome-text"><span class="text-black fw-bold">감독관리시스템</span></h1>
                    <h3 class="welcome-sub-text">감독관리페이지</h3>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown d-none d-lg-block">
                </li>
                <li>
                    <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
                    </div>
                </li>
                <li class="nav-item">
                </li>
                <li class="nav-item dropdown">
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="notificationDropdown">
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="countDropdown">
                    </div>
                </li>
                <li class="nav-item dropdown d-none d-lg-block user-dropdown">
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                        <div class="dropdown-header text-center">
                        </div>

                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <il class="nav-item active">
                    <a class="nav-link" data-bs-toggle="collapse" aria-expanded="true" aria-controls="auth"
                       onclick="document.forms['logoutForm'].submit()">Logout</a>
                    <span class="menu-title">
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                            </c:if>
                        </span>
                </il>
                <li class="nav-item ">
                    <a class="nav-link" href="/candidate/candidateHome">
                        <i class="mdi mdi-grid-large menu-icon"></i>
                        <span class="menu-title">CandidateDB</span>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="home-tab">
                            <div class="tab-content tab-content-basic">
