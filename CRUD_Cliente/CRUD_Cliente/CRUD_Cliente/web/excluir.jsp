<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="fac" class="facade.FormFacade"/>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Xóa người dùng</title>
    </head>
    <body>
        <h1>Kết quả xóa</h1>
        <hr>
        <h2><%=fac.excluirCliente(request)%></h2>
        <br>
        <br>
        [<a href="index.jsp">Hiển thị danh sách người dùng </a>]
    </body>
</html>
