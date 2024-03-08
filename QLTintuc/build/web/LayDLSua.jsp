<%-- 
    Document   : LayDLSua
    Created on : Feb 4, 2024, 3:22:28 AM
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
            String ID_News = request.getParameter("ID_News");
            String Title = request.getParameter("Title");
            String Summary = request.getParameter("Summary");
            String Decription = request.getParameter("Decription");
            String Author = request.getParameter("Author");  
            QLTintuc.Ql_Tinuc xlSua = new QLTintuc.Ql_Tinuc();
    if (xlSua.UpdateNews(ID_News, Title, Summary, Decription, Author) != -1) {
        out.print("Đã sửa tin tức có mã là " + ID_News);
    } else {
        out.print("Sửa thất bại!!!");
        %>
        
    </body>
</html>
