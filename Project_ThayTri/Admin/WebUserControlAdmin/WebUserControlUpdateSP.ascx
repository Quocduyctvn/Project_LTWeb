<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlUpdateSP.ascx.cs" Inherits="Project_ThayTri.Admin.WebUserControlAdmin.WebUserControlUpdateSP" %>
<a href="../TrangChuAdmin.aspx">QUAY VỀ TRANG QUẢN TRỊ</a>
    <form id="form1" runat="server">
        <h1>TRANG CẬP NHẬT Sản Phẫm</h1>
        <asp:Label ID="lb_Error" runat="server" Text="Vui lòng nhập các thông tin Sản Phẫm" ForeColor="#00cc00"></asp:Label>
        <asp:Label ID="lb_tensanpham" runat="server" Text="Tên"></asp:Label>
        <asp:TextBox ID="tensanpham" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_manhinh" runat="server" Text="màn Hình"></asp:Label>
        <asp:TextBox ID="manhinh" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_cpu" runat="server" Text="CPU"></asp:Label>
        <asp:TextBox ID="cpu" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_ram" runat="server" Text="RAM"></asp:Label>
        <asp:TextBox ID="ram" runat="server"></asp:TextBox> <br />

         <asp:Label ID="lb_harddrive" runat="server" Text="Harddrive"></asp:Label>
        <asp:TextBox ID="harddrive" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_os" runat="server" Text="Hệ điều hành"></asp:Label>
        <asp:TextBox ID="os" runat="server"></asp:TextBox> <br />

         <asp:Label ID="lb_xuatxu" runat="server" Text="Xuất xứ"></asp:Label>
        <asp:TextBox ID="xuatxu" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_baohanh" runat="server" Text="Thời gian bảo hànhh"></asp:Label>
        <asp:TextBox ID="baohanh" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_trongluong" runat="server" Text="Trọng lượng"></asp:Label>
        <asp:TextBox ID="trongluong" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_kichthuoc" runat="server" Text="Kích thước"></asp:Label>
        <asp:TextBox ID="kichthuoc" runat="server"></asp:TextBox> <br />

         <asp:Label ID="lb_img" runat="server" Text="Hình Ảnh"></asp:Label>
        <asp:FileUpload ID="img" runat="server"></asp:FileUpload> <br />

        <asp:Label ID="lb_gia" runat="server" Text="Giá Gốc"></asp:Label>
        <asp:TextBox ID="gia" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_giagiam" runat="server" Text="Giá giảm còn"></asp:Label>
        <asp:TextBox ID="giagiam" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lb_mota" runat="server" Text="Mô tả Sản Phẫm"></asp:Label>
        <asp:TextBox ID="mota" runat="server"></asp:TextBox> <br />

        <asp:Button ID="btnCapNhat" runat="server" Text="CẬP NHẬT" OnClick="hanldeClick_Update" />
    </form>