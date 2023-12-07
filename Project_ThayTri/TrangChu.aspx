<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Project_ThayTri.TrangChu" %>
<%@ Register src="Client/WebUserControlDanhMuc.ascx" tagname="WebUserControlDanhMuc" tagprefix="uc1" %>
<%@ Register src="Client/WebUserControlSlide.ascx" tagname="WebUserControlSlide" tagprefix="uc2" %>
<%@ Register src="Client/WebUserControlSanPham.ascx" tagname="WebUserControlSanPham" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <uc1:WebUserControlDanhMuc ID="WebUserControlDanhMuc1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <uc2:WebUserControlSlide ID="WebUserControlSlide1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <uc3:WebUserControlSanPham ID="WebUserControlSanPham1" runat="server" />
</asp:Content>


