<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlSanPham.ascx.cs" Inherits="Project_ThayTri.Client.WebUserControlSanPham" %>


<div id="content">
    <div class="grid wide">
        <div class=" row">
            <!-- Category -->
            <div class="col l-3 m-0 c-0">
                <ul class="row list__category">
                    <div class="col caterogy">
                        <h3>Hãng sản xuất</h3>
                    </div>
                    <div class="sub__category">
                        <ul class="col categogy__sub__decs">
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id="" checked><a href="">Tất cả</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="#">Asus</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">Lenovo</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">MSI</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">LG</a>
                        </ul>
                        <ul class="col categogy__sub__decs">
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">Apple</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">HP</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">Acer</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">Dell</a>
                            <li class="">
                                <input class="input__magrin" type="checkbox" name="" id=""><a href="">Huawei</a>
                        </ul>
                    </div>
                </ul>

                <ul class="row list__category">
                    <div class="col caterogy">
                        <h3>CPU</h3>
                    </div>
                    <div class="sub__category">
                        <ul class="col categogy__sub__decs">
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id="" checked><a href="">Tất cả</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Intel Celeron</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Intel Pentium</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Intel Core i3a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Inel Core i5a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Intel Core i7a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">AMD Ryzen 3a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">AMD Ryzen 5a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">AMD Ryzen 7a</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">AMD Ryzen 9a</a>
                        </ul>
                    </div>
                </ul>
                <ul class="row list__category">
                    <div class="col caterogy">
                        <h3>RAM</h3>
                    </div>
                    <div class="sub__category">
                        <ul class="col categogy__sub__decs">
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">4gb</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">8gb</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">16gb</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">32gb</a>
                        </ul>
                    </div>
                </ul>
                <ul class="row list__category">
                    <div class="col caterogy">
                        <h3>Card đồ họa</h3>
                    </div>
                    <div class="sub__category">
                        <ul class="col categogy__sub__decs">
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">NVIDIA GeForce Series</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">AMD Radeon Series</a>
                            <li class="col l-12">
                                <input class="input__magrin" s type="checkbox" name="" id=""><a href="">Card Onboard</a>
                        </ul>
                    </div>
                </ul>
            </div>

            <!-- Product -->
            <div class="col l-9 m-12 c-12">
                <!-- Laptop Row-1 logo -->
                <div class="row " style="border-radius: 10px; background-color: rgb(255, 255, 255)">
                    <div class="col l-12 m-12 c-0 border">
                        <h3>Sản Phẩm mới</h3>
                    </div>
                    <!-- logo product -->
                    <div class="col l-12 m-12 c-0 ">
                        <div class="list__img--logo row  border">
                            <%for (int i = 0; i < spNew.Count; i++)
                              {
                            %>
                            <img class="size-logo " src="./img/img-laptop/<%=spNew[i].Img %>" alt="">
                            <%} %>
                        </div>
                    </div>
                </div>

                <!-- LAPTOP theo nhu cầu Row-2-->
                <div class="row " style="border-radius: 10px; background-color: rgb(255, 255, 255)">
                    <div class="col l-12 m-12 c-0 border">
                        <h3>Sản phẩm bán chạy</h3>
                    </div>
                    <!-- logo product -->
                    <div class="col l-12 m-12 c-0 ">
                        <div class="list__img--logo row  border">
                            <%for (int i = 0; i < spBanChay.Count; i++)
                              {
                            %>
                            <img class="size-logo " src="./img/img-laptop/<%=spBanChay[i].Img %>" alt="">
                            <%} %>
                        </div>
                    </div>
                </div>


                <%if (check_msg == 0)
                  {
                %>
                <h2 style="margin: 30px" id="<%=DM.IdDanhMuc%>"><%=DM.TenDanhMuc %></h2>
                <div class="row product__laptop" style="margin-top: 50px; border-radius: 10px; background-color: rgb(255, 255, 255)">
                    <h3 style="color: red;">Xin lỗi quý khách hiện tại sản phẫm bạn đang tìm đã hết- Quý khách vui lòng xem các sản phẫm liên quan hoặc gọi: <a href="tel:0901007221">0901007221</a> để được hỗ trợ</h3>
                </div>
                <%} %>

                <h2 style="margin-top: 30px" id="<%=DM.IdDanhMuc %>">
                    <%= check_title == 1 ? "Tất cả sản phẩm" : "Tất cả các Sản Phẩm của: " + DM.TenDanhMuc %>
                </h2>


                <div class="row product__laptop" style="border-radius: 10px; background-color: rgb(255, 255, 255)">

                    <%for (int i = 0; i < ListSP.Count(); i++)
                      {
                    %>
                    <div class="col l-4 m-6 c-12">
                        <a href='<%="ChiTietSanPham.aspx?IDSanPham="+ListSP[i].IDSanPham.ToString() %>'>
                            <div class="laptop-center">
                                <img class="" src="./img/img-laptop/<%=ListSP[i].Img %>" alt=""></div>
                        </a>
                        <div>
                            <h4 class="font-size17"><%=ListSP[i].TenSanPham %></h4>
                        </div>
                        <div class="row">
                            <p class=""><span style="color: red; font-size: 25px; padding: 6px; margin: 0 29px;"><%=ListSP[i].GiaGiam %></span><span style="color: black; font-size: 18px; text-decoration: line-through"> <%=ListSP[i].Gia %></span></p>
                        </div>
                        <ul class="row">
                            <li class="col l-4">
                                <p><i class="fa-solid fa-desktop"></i><%=ListSP[i].ManHinh %></p>
                            </li>
                            <li class="col l-4">
                                <p><i class="fa-solid fa-microchip"></i><%=ListSP[i].CPU %></p>
                            </li>
                            <li class="col l-4 ">
                                <p><i class="fa-solid fa-memory"></i><%=ListSP[i].RAM %></p>
                            </li>
                        </ul>

                    </div>

                    <%} %>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //lăn 
    document.addEventListener("DOMContentLoaded", function () {
        let check_title = "<%=check_title%>";

        if (check_title == 0) {
            myFunction();
        }
        function myFunction() {
            window.scrollBy(0, 950);
        }

    });
</script>
