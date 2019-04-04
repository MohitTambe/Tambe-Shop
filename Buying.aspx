<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Buying.aspx.cs" Inherits="tambeshop.Buying" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container">
        <div class="row justify-content-center">
            <div class="card">
                <div class=" card-title">
                    <asp:Label ID="Label1" runat="server" Text="Please Login....."></asp:Label>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label><br />
                            <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Resgisterform.aspx">Sign Up Now....</asp:HyperLink>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass=" btn btn-light border-danger rounded-pill" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
