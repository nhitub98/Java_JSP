<%-- 
    Document   : LayDLXoa
    Created on : Feb 4, 2024, 2:18:07 AM
    Author     : Hien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ID_News=request.getParameter("ID_News");
            QLTintuc.Ql_Tinuc xlXoa = new QLTintuc.Ql_Tinuc();
            if(xlXoa.DeleteNews(ID_News)!=-1) out.print("Da xoa khach hang co ID_News= "+ID_News);
            else out.print("Xoa that bai!!!");
        %>
    </body>
     <a href="List_News.jsp">DANH SÁCH TIN TỨC</a>
</html>
