<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm tin tức</title>
    <!-- Boostrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Cải thiện giao diện nếu cần */
    </style>
</head>
<body>
<div class="container mt-4">
    <h1>Thêm mới tin tức</h1>
    <form action="xlThemtintuc.jsp" method="post">
        <div class="form-group">
            <label for="txtMatintuc">Mã tin tức:</label>
            <input type="text" class="form-control" id="txtMatintuc" name="txtMatintuc">
        </div>
        <div class="form-group">
            <label for="txtTieude">Tiêu đề:</label>
            <input type="text" class="form-control" id="txtTieude" name="txtTieude">
        </div>
        <div class="form-group">
            <label for="txtTomtat">Tóm tắt:</label>
            <input type="text" class="form-control" id="txtTomtat" name="txtTomtat">
        </div>
        <div class="form-group">
            <label for="txtNoidung">Nội dung:</label>
            <input type="text" class="form-control" id="txtNoidung" name="txtNoidung">
        </div>
        <div class="form-group">
            <label for="txtTacgia">Tác giả:</label>
            <input type="text" class="form-control" id="txtTacgia" name="txtTacgia">
        </div>
        <button type="submit" class="btn btn-primary" name="btnThem">Thêm</button>
        <button type="reset" class="btn btn-secondary" name="btnBoqua">Bỏ qua</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
