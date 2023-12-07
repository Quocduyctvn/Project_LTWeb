<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlChiTietSanPham.ascx.cs" Inherits="Project_ThayTri.Client.WebUserControlChiTietSanPham" %>


<div id="detail" style="margin-top: 150px;">
    <div class="grid wide detail-container">
        <div class="row detail-container">
            <!-- Mô tả, hình ảnh,Thông số kỹ thuật-->
            <div class="col l-6">
                <div class="row detail__describe-img">
                    <img class="col l-12" src="./img/img-laptop/<%=ChiTietSanPham.Img %>" alt="Laptop Asus">
                </div>
                <div class="row col parameter-list" style="margin-top: 20px; ">
                    <div class="col l-12 " style="padding: 0;">
                        <h3>Thông số kỹ thuật</h3>
                    </div>
                    <div class="row parameter-item">
                        <div class="col l-4 font-size">
                            <p>Màn hình</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.ManHinh %></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>CPU</p>

                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.CPU%></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>RAM</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.RAM%></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>Ổ cứng</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.HardDrive%></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>Hệ điều hành</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.OS%></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>Trọng lượng</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.TrongLuong%> kg</p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>Xuất xứ</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.XuatXu%></p>
                        </div>
                        <div class="col l-4 font-size">
                            <p>Bảo Hành</p>
                        </div>
                        <div class="col l-8 font-size">
                            <p><%=ChiTietSanPham.BaoHanh%></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Tên, đánh giá, liên quan    -->
            <div class="col l-6">
                <div class="row detail__describe-desc">
                    <div class="col l-12">
                        <h2> Laptop Asus TUF Gaming FX506HF-HN017W i5 11400H/16GB/512GB/GeForce RTX 2050 4GB/Win11
                        </h2>
                    </div>
                    <div class="row detail-coast">
                        <div class="col l-12">
                            <div class="row size">
                                <div class="col l-6 text-center ">
                                    <h1 style="color: red"><%= string.Format("{0:N0}", ChiTietSanPham.GiaGiam) %> đ</h1>
                                </div>
                                <div class="col l-6 text-center sale">
                                    <h3><s><%= string.Format("{0:N0}", ChiTietSanPham.Gia) %> đ</s></h3>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                </div>
                <!-- ưu đải trả góp -->
                <div class="row">
                    <div class="col l-12  font-size14">
                        <p> chọn 1 trong 2 khuyến mãi sau</p>
                    </div>
                    <!-- sale 1 -->
                    <div class="col l-12" style="padding: 0;">
                        <div class="col l-12  font-size14">
                            <p>
                                <input type="checkbox" checked>
                                Giảm ngay 4.000.000đ đến hết ngày 20/11/2023
                            </p>
                        </div>
                        <div class="col l-12  font-size14">
                            <p>
                                <input type="checkbox"> Trả góp 0%
                            </p>
                        </div>
                    </div>

                </div>
                <!-- detail sale -->
                <div class="row">
                    <div class="col l-12  font-size14">
                        <h4>Ưu đãi thêm</h4>
                    </div>
                    <!-- sale 1 -->
                    <div class="col l-12  " style="padding: 0;">
                        <div class="col l-12  font-size14">
                            <p>
                                <input type="checkbox" checked>  Tặng Phiếu mua hàng 399.000đ mua Chuột Gaming MSI Clutch GM08/GM03 <a>xem chi tiết</a>
                            </p>
                        </div>
                        <div class="col l-12  font-size14">
                            <p>
                                <input type="checkbox" checked>  Ưu đãi đặc quyền dành cho Học sinh - Sinh viên : Tặng thêm 1 năm bảo hành <a>xem chi tiết</a>
                            </p>
                        </div>
                        <div class="col l-12 font-size14">
                            <p>
                                <input type="checkbox">  Tặng Balo Laptop  <a>xem chi tiết</a>
                            </p>
                        </div>

                    </div>

                </div>
                <!-- buy laptop -->
                <div class="detail-button">
                    <div class="btn__item">
                        <asp:Button runat="server" class="detail-btn" ID="btnDatHang" Style="display: flex; width: 100%; justify-content: center; line-height: 55px; outline: none; border-radius: 9px; border: none; color: #ffff; background-color: #cb1c22; font-size: 18px; /* adjust the font size as needed */"
                            Text="Đặt Hàng" OnClick="HanldeDatHang"></asp:Button>
                    </div>
                </div>

                <!-- đánh  giá chi tiết sản phẩm -->
                <div class="parameter-introduce" style="margin-top: 20px">
                    <h3>ĐẶC ĐIỂM NỔI BẬT</h3>
                    <p>
                        <%=ChiTietSanPham.MoTa%>
                    </p>
                </div>
                <div class="row">
                    <div class="col l-12">
                        <h3>Sản phẫm liên quan:</h3>
                    </div>
                    <div class="col l-12 img-item">
                        <div class="row list-img">
                            <%for (int i = 0; i < SPLienQuan.Count; i++)
                              { %>
                            <div class="col l-4">
                                <img class="l-12 " src="./img/img-laptop/<%=SPLienQuan[i].Img %>" alt="">
                                <p class="l-12 font-size14 text-color"><%=SPLienQuan[i].TenSanPham %></p>
                            </div>
                            <%} %>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <!-- đánh giá và câu hỏi của khách hàng dành cho shop -->
        <div class="row">
        </div>
    </div>
</div>
