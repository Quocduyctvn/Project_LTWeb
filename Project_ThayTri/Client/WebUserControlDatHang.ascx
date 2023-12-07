<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDatHang.ascx.cs" Inherits="Project_ThayTri.Client.WebUserControlDatHang" %>


<div id="coast">
    <div class="container">
        <div class="img-product" style="margin-left: 30px;">
            <div class="box-img-product">
                <img src="./img/img-laptop/<%=ChiTietSP.Img %>" alt="">
            </div>
            <div>
                <h4><%=ChiTietSP.TenSanPham %></h4>
                <li><b>Màn Hinh:  </b><%=ChiTietSP.ManHinh %></li>
                <li><b>CPU:  </b><%=ChiTietSP.CPU %></li>
                <li><b>RAM:  </b><%=ChiTietSP.RAM %></li>
                <br />
                <li><b>Tổng thanh toán:  </b><span style="color: red; font-size: 25px;"><%= string.Format("{0:N0}", ChiTietSP.GiaGiam) %> đ</span></li>
            </div>
        </div>
        <div class="infor-user">
            <h3>Nhập thông tin của bạn</h3>
            <span style="color: red" class="message">*Quý khách vui lòng nhập thông tin chính xác</span>
            <div class="box-fix">
                <label for="username"><span style="color: red">* </span>Họ và Tên:</label>
                <asp:TextBox ID="username" runat="server" placeholder="Nhập họ và Tên Của bạn.."></asp:TextBox>
            </div>
            <div class="box-fix">
                <label for="phone"><span style="color: red">* </span>Số Điện Thoại</label>
                <asp:TextBox ID="phone" runat="server" placeholder="Nhập số điện thoại.."></asp:TextBox>
            </div>
            <div class="box-fix">
                <label for="email"><span style="color: red">* </span>Email:</label>
                <asp:TextBox ID="email" runat="server" placeholder="Nhập Email.."></asp:TextBox>
            </div>
            <div class="box-fix">
                <label for="address"><span style="color: red">* </span>Địa chỉ nhà:</label>
                <asp:TextBox ID="address" runat="server" placeholder="Nhập địa chỉ nhà.."></asp:TextBox>
            </div>
             <asp:Button runat="server" class="detail-btn" ID="btnXacNhan" Style="display: flex; width: 70%; justify-content: center; line-height: 55px; outline: none; border-radius: 9px; border: none; color: #ffff; background-color: #cb1c22;
               font-size: 18px; " Text="Xác nhận đặt hàng" OnClick="HanldXacNhan"></asp:Button>

        </div>
    </div>
</div>
