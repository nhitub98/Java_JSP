<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="fac" class="facade.FormFacade"/>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UNG VIEN DANG KY THANH CONG</title>
    </head>
    <body>
        <h1>KET QUA DANG KY</h1>
        <hr>
        <h2><%=fac.salvarCliente(request)%></h2>
        <br>
        <br>
        [<a href="formulario.jsp"> Dang ky </a>] 
        [<a href="index.jsp">      Xem danh sach nguoi dang ky </a>]
    </body>
</html>
