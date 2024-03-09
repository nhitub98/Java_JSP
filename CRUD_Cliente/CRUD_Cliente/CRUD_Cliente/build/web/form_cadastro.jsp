<%-- Document   : form_cadastro
     Author     : Wesley --%>

<%@page contentType="text/html" pageEncoding="ISO-8859-9"%><%--Se pageEncoding estive UTF mude--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DANG KY</title>
    </head>
    <body>
        <h1>DANG KY THANH VIEN</h1>
        <hr>
        <strong>Form dang ky thanh vien</strong><br/>
        <br/>
       Dien thong tin vao muc duoi day <br/>
        
        <form action="cadastrar.jsp" method="post">
            Name: <input type="text" name="cpNome" id="cpNome" value="" /> <br/>
            Email: <input type="text" name="cpEmail" id="cpEmail" value="" /> <br/>
            So dien thoai: <input type="text" name="cpTel" id="cpTel" value="" />(XXX.XXX.XXXX)<br/>
            Gioi tinh: <input type="radio" name="cpSexo" id="cpSexoM" value="M"> Nam
                  <input type="radio" name="cpSexo" id="cpSexoF" value="F"> Nu <br/>
            Ngay sinh: <input type="text" name="cpDataNasc" id="cpDataNasc" value="" />(dd/mm/yyyy) <br/>
            <br/>
            <input type="submit" value="Dang ky"/>  <input type="reset" value="Nhap lai"/>
        </form>
        <br/>
        <br/>
        <a href="index.jsp">Hien thi danh sach nguoi dung</a> <br/> 
    </body>
</html>