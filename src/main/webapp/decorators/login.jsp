<%--
  Created by IntelliJ IDEA.
  User: Duong
  Date: 4/26/2023
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title><dec:title default="Trang chủ" /></title>
  <!-- Favicon-->

  <link rel="icon" type="image/x-icon" href="<c:url value='/template/web/assets/favicon.ico'/>" />
  <!-- Bootstrap icons-->

  <link href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css'/>" rel="stylesheet " />
  <!-- Core theme CSS (includes Bootstrap)-->

  <link href="<c:url value='/template/web/css/styles.css' />" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<%@ include file="/common/web/header.jsp" %>
<!-- header -->


<dec:body/>


<!-- Footer-->
<%@ include file="/common/web/footer.jsp" %>

<!-- Bootstrap core JS-->
<script src="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'/>"></script>
<!-- Core theme JS-->

<script src="<c:url value='/template/web/js/scripts.js'/>"> </script>
</body>
</html>

