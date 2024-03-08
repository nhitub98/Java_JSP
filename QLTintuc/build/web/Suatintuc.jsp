<%-- 
    Document   : Suatintuc
    Created on : Feb 4, 2024, 3:10:19 AM
    Author     : Hien
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  
    </head>
    <body>
        <%  
            String ID_News = request.getParameter("ID_News");
            QLTintuc.Ql_Tinuc model = new QLTintuc.Ql_Tinuc();
            ResultSet rs = model.getByIDNews(ID_News);
        %>
        <p>
            <a href="List_News.jsp">Danh sach tin tuc</a>
        </p>
        <h1>Sua tin tuc</h1>
        <form action="xlSuatintuc.jsp" method="post">
            <table border="1px">
                <tr>
                    <th>Ma Tin tuc</th>
                    <th>Tieu de</th>
                    <th>Tom tat</th>
                    <th>Noi dung</th>
                    <th>Tac gia</th>
                    <th>Thao tac</th>
                </tr>
                <% while(rs.next()) { %>
                <tr>
                    <td><input type="text" name="txtMatintuc" value="<%=rs.getString("ID_News")%>"></td>        
                    <td><input type="text" name="txtTieude" value="<%=rs.getString("Title")%>"></td>
                    <td><input type="text" name="txtTomtat" value="<%=rs.getString("Summary")%>"></td>
                    <td><input type="text" name="txtNoidung" value="<%=rs.getString("Decription")%>"></td>
                    <td><input type="text" name="txtTacgia" value="<%=rs.getString("Author")%>"></td>
                    <td><input type="submit" value="Sua"></td>
                </tr>
                <% } %>
            </table>
        </form>
    </body>
</html>