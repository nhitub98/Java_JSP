<%-- Document   : index
     Author     : Wesley --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="fac" class="facade.FormFacade"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>HIỂN THỊ DANH SÁCH NGƯỜI DÙNG</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 class="mt-3">HIỂN THỊ DANH SÁCH NGƯỜI DÙNG</h1>

<input type="button" class="btn btn-primary mb-3" value="Đăng ký" onclick="location.href='form_cadastro.jsp'"/>

<div class="container">
    <h2 class="mt-3">DANH SÁCH ĐĂNG KÝ</h2>
    <%=fac.getListClientes()%>
</div>

<!-- Bootstrap JS and jQuery (Optional, if needed) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
