<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDanhMuc.ascx.cs" Inherits="Project_ThayTri.Client.WebUserControlDanhMuc" %>



<div id="header2">
    <div class="header__nav-black">
        <div class="header__menu">
            <%for (int i = 0; i < ListDM.Count; i++)
              { %>
                    <div class="black__icons-laptop" id=""><i class="fa-solid fa-laptop"></i><a href='<%="TrangChu.aspx?IdDanhMuc="+ListDM[i].IdDanhMuc.ToString() %>'><%=ListDM[i].TenDanhMuc %></a></div>
            <%} %>
        </div>
    </div>
</div>
<%--lap dm --%>