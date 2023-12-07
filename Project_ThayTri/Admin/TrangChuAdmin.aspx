<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="TrangChuAdmin.aspx.cs" Inherits="Project_ThayTri.Admin.TrangChuAdmin" %>
<%@ Register src="WebUserControlAdmin/WebUserControlSanPham.ascx" tagname="WebUserControlSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:WebUserControlSanPham ID="WebUserControlSanPham1" runat="server" />
</asp:Content>
