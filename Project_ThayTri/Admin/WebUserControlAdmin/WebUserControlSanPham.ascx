<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlSanPham.ascx.cs" Inherits="Project_ThayTri.Admin.WebUserControlAdmin.WebUserControlSanPham" %>
<style>
    .frame {
        text-align: center;
    }

    h1 {
        color: black;
        font-weight: 900;
    }

    .grid-container {
        max-width: 800px; /* Set a maximum width for the grid container */
        margin: 20px auto; /* Center the grid container */
        padding: 0 200px; /* Add space on the left and right sides */
    }

    .data-grid {
        width: 100%;
        text-align: center;
        border: 1px solid #ccc;
        border-collapse: collapse;
        table-layout: fixed; /* Fix the table layout */
    }

    .data-grid th, .data-grid td {
        padding: 5px; /* Adjust padding for a more compact layout */
        border: 1px solid #ccc;
        height: 50px; /* Set a smaller height for each row */
        overflow: hidden; /* Hide overflow content */
    }

    .data-grid img {
        max-width: 100%;
        height: 100%; /* Set a specific height for the images */
        display: block; /* Remove extra space below inline images */
        margin: 0 auto; /* Center images horizontally */
    }

    .data-grid a {
        color: violet;
        font-weight: 900;
    }

    .data-grid .button-column {
        white-space: nowrap;
    }
</style>
<div class="frame" style="margin-top: 100px">
    <h1>TRANG QUẢN TRỊ LAPTOP</h1>
    <br />
</div>
<asp:DataGrid ID="gridLapTop" border="100" style="text-align:center" runat="server" AllowCustomPaging="true" PageSize="10" PagerStyle-Mode="NumericPages" AutoGenerateColumns="false"
    DataKeyField="IDSanPham" OnItemCommand="gridLapTop_ItemCommand" OnPageIndexChanged="gridLapTop_PageIndexChanged">
    <Columns>
        <asp:TemplateColumn>
            <HeaderTemplate >Stt</HeaderTemplate>
            <ItemTemplate >
                <asp:Label ID="idsanpham" runat="server" Text='<%#Eval("IDSanPham") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Hình Ảnh</HeaderTemplate>
            <ItemTemplate>
                <img src='<%#"../img/img-laptop/" + Eval("Img") %>' width="100" height="100" />
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Tên Laptop</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="tensanpham" runat="server" Text='<%#Eval("TenSanPham") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Màn Hình</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="ManHinh" runat="server" Text='<%#Eval("ManHinh") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>CPU</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="cpu" runat="server" Text='<%#Eval("CPU") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>RAM</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="ram" runat="server" Text='<%#Eval("RAM") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>OS</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="os" runat="server" Text='<%#Eval("OS") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Ổ Cứng</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="harddrive" runat="server" Text='<%#Eval("HardDrive") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Giá</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="gia" runat="server" Text='<%#Eval("Gia", "{0:N0}") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <HeaderTemplate>Giá Giảm</HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="giagiam" runat="server" Text='<%#Eval("GiaGiam", "{0:N0}") %>' ForeColor="Black"></asp:Label>
            </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn>
            <ItemTemplate>
                <asp:LinkButton ID="capnhat" runat="server" Text="CẬP NHẬT" CommandName="UpdateLapTop" OnClientClick="return confirm('Bạn có muốn Update không')"
                    ForeColor="Blue" width="200"></asp:LinkButton> <br /> <br />
                <asp:LinkButton ID="xoa" runat="server" Text="XÓA" CommandName="DeleteLapTop" OnClientClick="return confirm('Bạn có muốn Xóa Sản Phẫm này không?')"
                    ForeColor="red" width="200"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateColumn>
    </Columns>
</asp:DataGrid>
