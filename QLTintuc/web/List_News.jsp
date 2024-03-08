<%-- 
    Document   : List_News
    Created on : Sep 29, 2022, 7:37:40 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sach tin tuc</title>
    </head>
    <body>
        <%
            QLTintuc.Ql_Tinuc model = new QLTintuc.Ql_Tinuc();
            ResultSet rs = model.getConnectionNews();
        %>
        <p>
            <a href="Themtintuc.jsp">Them tin tuc</a>
        </p>
        <h1>Danh sach tin tưc</h1>
        <table border="1px">
            <tr>
                <th>Ma Tin tuc</th>
                <th>Tieu de</th>
                <th>Tom tat</th>
                <th>Noi dung</th>
                <th>Tac gia</th>
                <th colspan="2" align="center">Thao tac</th>
            </tr>
            <%
                while(rs.next()){
            %>
            <tr>
                <td><% out.print(rs.getString("ID_News")); %></td>
                <td><% out.print(rs.getString("Title")); %></td>
                <td><% out.print(rs.getString("Summary")); %></td>
                <td><% out.print(rs.getString("Decription")); %></td>
                <td><% out.print(rs.getString("Author")); %></td>
                <td><a href="Suatintuc.jsp?ID_News=<% out.print(rs.getString("ID_News")); %>">Sua</a></td>
                <td><a href="LayDLXoa.jsp?ID_News=<% out.print(rs.getString("ID_News")); %>" onclick="return (confirm('Ban chac chan muon xoa?'))">Xoa</a></td>
            </tr>
            <%
                }
            %>
        </table>
        
    </body>
</html>
