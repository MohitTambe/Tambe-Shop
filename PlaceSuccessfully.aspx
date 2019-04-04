<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="PlaceSuccessfully.aspx.cs" Inherits="tambeshop.PlaceSuccessfully" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <asp:Label ID="Label1" runat="server" Text="Your order have Been Placed Successfully....... Thank You Press Down For Continue Shopping"></asp:Label>'
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Click Here</asp:HyperLink>
        </div>
    </div>
</asp:Content>
