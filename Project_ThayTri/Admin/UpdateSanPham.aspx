<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSanPham.aspx.cs" Inherits="Project_ThayTri.Admin.UpdateSanPham1" %>

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
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input,
        textarea,
        select {
            width: 100%;
            padding: 10px;
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
        <div>
            <a href="TrangChuAdmin.aspx">QUAY VỀ TRANG QUẢN TRỊ</a>
            <h1>TRANG CẬP NHẬT Sản Phẫm</h1>
            <asp:Label ID="lb_Error" runat="server" Text="Vui lòng nhập các thông tin Sản Phẫm" ForeColor="#00cc00"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lb_tensanpham" runat="server" Text="Tên"></asp:Label>
                <asp:TextBox ID="tensanpham" runat="server"></asp:TextBox>
                <br />
            </div>
            <asp:Label ID="lb_manhinh" runat="server" Text="màn Hình"></asp:Label>
            <asp:TextBox ID="manhinh" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_cpu" runat="server" Text="CPU"></asp:Label>
            <asp:TextBox ID="cpu" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_ram" runat="server" Text="RAM"></asp:Label>
            <asp:TextBox ID="ram" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_harddrive" runat="server" Text="Harddrive"></asp:Label>
            <asp:TextBox ID="harddrive" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_os" runat="server" Text="Hệ điều hành"></asp:Label>
            <asp:TextBox ID="os" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_xuatxu" runat="server" Text="Xuất xứ"></asp:Label>
            <asp:TextBox ID="xuatxu" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_baohanh" runat="server" Text="Thời gian bảo hànhh"></asp:Label>
            <asp:TextBox ID="baohanh" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_trongluong" runat="server" Text="Trọng lượng"></asp:Label>
            <asp:TextBox ID="trongluong" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_kichthuoc" runat="server" Text="Kích thước"></asp:Label>
            <asp:TextBox ID="kichthuoc" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_img" runat="server" Text="Hình Ảnh"></asp:Label>
            <asp:FileUpload ID="img" runat="server"></asp:FileUpload>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_gia" runat="server" Text="Giá Gốc"></asp:Label>
            <asp:TextBox ID="gia" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_giagiam" runat="server" Text="Giá giảm còn"></asp:Label>
            <asp:TextBox ID="giagiam" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="lb_mota" runat="server" Text="Mô tả Sản Phẫm"></asp:Label>
            <asp:TextBox ID="mota" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
            <asp:Button ID="btnCapNhat" runat="server" Text="CẬP NHẬT" OnClick="hanldeClick_Update" />
        </div>
    </form>
</body>
</html>
