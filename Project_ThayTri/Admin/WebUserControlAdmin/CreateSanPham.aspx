<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateSanPham.aspx.cs" Inherits="Project_ThayTri.Admin.WebUserControlAdmin.CreateSanPham" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #343a40;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #495057;
            display: block;
            margin-bottom: 5px;
        }

        input,
        textarea,
        select {
            width: calc(100% - 24px);
            padding: 12px;
            box-sizing: border-box;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 16px;
            margin-top: 6px;
            transition: border-color 0.3s;
        }

            input:focus,
            textarea:focus,
            select:focus {
                border-color: #007bff;
            }

        button {
            width: 100%;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 12px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s;
        }

            button:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Add New Phone</h1>

            <div class="form-group">
                <asp:Label ID="lb_tensanpham" runat="server" Text="Tên Sản Phẫm"></asp:Label>
                <asp:TextBox ID="tensanpham" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_manhinh" runat="server" Text="Màn Hình"></asp:Label>
                <asp:TextBox ID="manhinh" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_cpu" runat="server" Text="CPU"></asp:Label>
                <asp:TextBox ID="cpu" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_ram" runat="server" Text="RAM"></asp:Label>
                <asp:TextBox ID="ram" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_harddrive" runat="server" Text="Harddrive"></asp:Label>
                <asp:TextBox ID="harddrive" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_os" runat="server" Text="OS"></asp:Label>
                <asp:TextBox ID="os" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_img" runat="server" Text="Ảnh Sản Phẫm"></asp:Label>
                <asp:FileUpload ID="img" runat="server" required></asp:FileUpload>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_xuatxu" runat="server" Text="Xuất Xứ"></asp:Label>
                <asp:TextBox ID="xuatxu" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_baohanh" runat="server" Text="Bảo Hành"></asp:Label>
                <asp:TextBox ID="baohanh" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_kichthuoc" runat="server" Text="Kích thứơc"></asp:Label>
                <asp:TextBox ID="kichthuoc" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_trongluong" runat="server" Text="Trọng Lượng"></asp:Label>
                <asp:TextBox ID="trongluong" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_gia" runat="server" Text="Giá gốc"></asp:Label>
                <asp:TextBox ID="gia" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_giagiam" runat="server" Text="Giá Giảm Còn"></asp:Label>
                <asp:TextBox ID="giagiam" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_mota" runat="server" Text="Mô Tả sản Phẫm"></asp:Label>
                <asp:TextBox ID="mota" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lb_iddanhmuc" runat="server" Text="Hãng Sản Xuất"></asp:Label>
                <asp:TextBox ID="iddanhmuc" runat="server" required></asp:TextBox>
            </div>

            <div class="form_input">
                <asp:Button CssClass="btn btn-outline-dark" Style="background-color: #ffc59e" ID="button" runat="server" OnClick="handleClick_AddSP" Text="Thêm mới Sản Phẫm" />
            </div>

        </div>
    </form>
</body>
</html>
