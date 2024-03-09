<%@page contentType="text/html" pageEncoding="ISO-8859-9"%>
<jsp:useBean id="fac" class="facade.FormFacade"/>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xac nhan dang ki ung vien</title>
    </head>
    <body>
        <h1>Ket qua dang ky</h1>
        <hr>
        <h2><%=fac.atualizarCliente(request)%></h2>
        <br>
        <br>
        [<a href="index.jsp">   Hien thi danh sach nguoi dung </a>]
    </body>
</html>