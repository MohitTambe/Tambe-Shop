<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="tambeshop.ProductDetail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Css2.1/Viewdetails.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style=" padding:0px; margin:0px;">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1" RepeatColumns="1" Width="100%" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="container-fluid">
                    <div class=" row justify-content-center" style=" border-bottom: solid 2px #000000;">
                        <asp:Label ID="Label1" CssClass="title" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row" style=" padding:10px; margin:0px;">
                                <asp:Image ID="Image1" runat="server" CssClass="img-responsive pimage" Width="90%" Height="50%" ImageUrl='<%# Eval("imagepath") %>' />
                                
                            </div>
                            <div class="row justify-content-center">
                                <asp:Image ID="Image3" runat="server" Height="60px" BorderWidth="2px" BorderColor="#7D0849"  BorderStyle="Solid" Width="80px" ImageUrl="~/Images/bis-916 hallmark.jpg" />
                                     &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image4" runat="server" Height="60px" BorderWidth="2px" Width="80px" BorderColor="#7D0849" BorderStyle="Solid" ImageUrl="~/Images/certifieddiamond.png" />
                            </div>
                        </div>
                    
                        <div class="col-md-6" style=" padding:10px; margin:0px;">
                         <div class="table">
                                    <table class="table-responsive table-hover table-sm text-dark bg-light" style="height:100%; width:100%;">
                                    <tbody>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" CssClass="index" Text="Product ID :"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" CssClass="values" Text='<%# Eval("productid") %>'></asp:Label>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" CssClass="index" Text="Gold Purity :"></asp:Label>
                                            <asp:Label ID="Label5" runat="server" CssClass="values" Text='<%# Eval("goldpurity") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" CssClass="index" Text="Metal Color :"></asp:Label>
                                            <asp:Label ID="Label7" runat="server" CssClass="values" Text='<%# Eval("metalcolor") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" CssClass="index" Text="Gross Weight :"></asp:Label>
                                            <asp:Label ID="Label9" runat="server" CssClass="values" Text='<%# Eval("grossweight") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" CssClass="index" Text="Net Weight :"></asp:Label>
                                            <asp:Label ID="Label11" runat="server" CssClass="values" Text='<%# Eval("netweight") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" CssClass="index" Text="Select Size :"></asp:Label>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                   </asp:DropDownList>    
                                            <asp:Label ID="Label25" runat="server" CssClass="index" Text="Quantity :"></asp:Label>
                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                </asp:DropDownList>    
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" CssClass="index" Text="Product Price :"></asp:Label>
                                            <asp:Label ID="Label14" runat="server" CssClass="values" Text='<%# Eval("price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" CssClass="index" Text="Theme :"></asp:Label>
                                            <asp:Label ID="Label16" runat="server" CssClass="values" Text='<%# Eval("theme") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" CssClass="index" Text="Design Type :"></asp:Label>
                                            <asp:Label ID="Label18" runat="server" CssClass="values" Text='<%# Eval("designtype") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" CssClass="index" Text="Wearing Style :"></asp:Label>
                                            <asp:Label ID="Label20" runat="server" CssClass="values" Text='<%# Eval("wearingstyle") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" CssClass="index" Text="Occasion :"></asp:Label>
                                            <asp:Label ID="Label22" runat="server" CssClass="values" Text='<%# Eval("occasion") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" CssClass="index" Text="Free Delivery For Kolhapur In 8 To 10 Days."></asp:Label>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label26" runat="server"  CssClass="index" Text="Customer Care No : "></asp:Label>
                                            <asp:Label ID="Label27" runat="server" CssClass="values" Text=" 9890333679"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:ImageButton ID="ImageButton1"  runat="server" Width="150px" Height="40px" CssClass="cart btn rounded-pill" ImageUrl="~/Images/addtocart.jpg" CommandName="addtocart" CommandArgument='<%# Eval("productid") %>' />

                                        </td>
                                    </tr>
                                    </tbody>
                                    </table>
                                </div>
                        </div>
                </div>
                <div class="row">
                    
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString2 %>" 
        
            
            SelectCommand="SELECT * FROM [Masterproduct] WHERE ([productid] = @productid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productid" QueryStringField="productid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>
