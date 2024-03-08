<%-- 
    Document   : xlThemtintuc
    Created on : Oct 3, 2022, 7:43:47 AM
    Author     : Admin
--%>

<%@page import="QLTintuc.Ql_Tinuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sID = request.getParameter("txtMatintuc");
            String sTieude = request.getParameter("txtTieude");
            String sTomtat = request.getParameter("txtTomtat");
            String sNoidung = request.getParameter("txtNoidung");
            String sAuthor = request.getParameter("txtTacgia");
            QLTintuc.Ql_Tinuc qlttThem = new QLTintuc.Ql_Tinuc();
            qlttThem.InsertNews(sID, sTieude, sTomtat, sNoidung, sAuthor);
        %>
        <a href="List_News.jsp">DANH SACH TIN TUC</a>
    </body>
</html>
