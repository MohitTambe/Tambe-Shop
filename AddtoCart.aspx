<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="tambeshop.AddtoCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Css2.1/AddtoCart.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid" style=" padding:0px; margin:0px;">
    <div class="row justify-content-center">
        <asp:Label ID="Label1" runat="server" CssClass="titlecon" Text="Welcome to Jewellery Box.... "></asp:Label>
    </div>
    <div class="row justify-content-end"> 
        <asp:Label ID="Label3" runat="server" CssClass="titlecon1" Text="Your Box contain"></asp:Label>
        &nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="badge-success badge-pill" Text=""></asp:Label>
        &nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="titlecon1" Text=" Items"></asp:Label>
    </div>
    <div class="row" style=" padding-top:10px;">
       <asp:Label ID="Label6" runat="server"></asp:Label>
    </div>  
    <div class="row">
        <div class="container-fluid" >
            <div class="col-md-12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100%" Width="100%" ShowFooter="True" 
               DataKeyNames="productid" onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr No.">
                <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productid" HeaderText="Product ID">
                <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productname" HeaderText="Product Name" 
                    SortExpression="productname" />
                <asp:BoundField DataField="grossweight" HeaderText="Gross Weight">
                <HeaderStyle Font-Size="Large" HorizontalAlign="Center" />
                <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="netweight" HeaderText="Net Weight">
                <HeaderStyle Font-Size="Large" HorizontalAlign="Center" />
                <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="size" HeaderText="Product Size" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="price" HeaderText="Price">
                <HeaderStyle Font-Size="Large" HorizontalAlign="Center" />
                <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                <asp:ImageField DataImageUrlField="imagepath" HeaderText="Product Image">
                    <HeaderStyle Font-Size="Large" HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                <asp:CommandField SelectText="Remove" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
            <div class="row justify-content-center">
            <asp:Button ID="Button1" runat="server" Text="Check Out" 
                    CssClass="btn btn-success rounded-pill" onclick="Button1_Click" Width="120px" Height="40px" />
            </div>
       </div>
       </div>
    </div>
</div>
</asp:Content>
