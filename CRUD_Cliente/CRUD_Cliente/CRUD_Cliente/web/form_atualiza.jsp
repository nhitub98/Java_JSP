<%-- Document   : form_cadastro
     Author     : Wesley --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="fac" class="facade.FormFacade"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Form sửa thông tin người dùng</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="mt-3">Form sửa người dùng</h1>
    <hr>
    <p class="font-weight-bold">Nhập lại vào form dưới đây</p>
    <br/>
    <%=fac.getPreencherForm(request)%>
    <br/>
    <br/>
    [<a href="index.jsp">Hiển thị danh sách người dùng</a>]
</div>

<!-- Bootstrap JS and jQuery (Optional, if needed) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
