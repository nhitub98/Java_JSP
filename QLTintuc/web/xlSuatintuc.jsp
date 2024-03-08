<%-- 
    Document   : xlSuatintuc
    Created on : Feb 4, 2024, 2:41:26 AM
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
< <%
            String sID = request.getParameter("txtMatintuc");
            String sTieude = request.getParameter("txtTieude");
            String sTomtat = request.getParameter("txtTomtat");
            String sNoidung = request.getParameter("txtNoidung");
            String sAuthor = request.getParameter("txtTacgia");
            QLTintuc.Ql_Tinuc qlttThem = new QLTintuc.Ql_Tinuc();
            qlttThem.UpdateNews(sID, sTieude, sTomtat, sNoidung, sAuthor);
        %>
        <a href="List_News.jsp">DANH SACH TIN TUC</a>
    </body>
</html>
