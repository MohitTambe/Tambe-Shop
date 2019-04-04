<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="W_necklace.aspx.cs" Inherits="tambeshop.W_necklace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Css2.1/W_necklace.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Banners/w_necklace.png" Height="200px" Width="100%" />
</div>
<div class="row">
    <div class="col-md-2 col-sm-2">
    
    </div>
    <div class="col-md-10 col-sm-10">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
            DataSourceID="SqlDataSource1" RepeatColumns="4" DataKeyField="productid" 
            onitemcommand="DataList1_ItemCommand" >
            <ItemTemplate>
                <br />
                <br />
                <div class="card" style=" height:530px; width:250px;">
                    <div class="card-header">
                        <asp:Image ID="Image2" runat="server" class="card-img-top img-fluid imagecss"  ImageUrl='<%# Eval("imagepath") %>' />
                    </div>
                    <div class="card-body">
                        <h2 class="card-title">
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("productname") %>'></asp:Label></a></h2>
                        <p class="card-text"> 
                            
                            <asp:Label ID="Label13" runat="server" Text="Product ID :" CssClass="info1"></asp:Label> 
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("productid") %>' 
                                CssClass="info"></asp:Label><br />

                            <asp:Label ID="Label1" runat="server" Text="Metal Color :" CssClass="info1"></asp:Label> 
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("metalcolor") %>' 
                                CssClass="info"></asp:Label><br />
                            
                            <asp:Label ID="Label3" runat="server" Text="Gross In Grams :"  CssClass="info1"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("grossweight") %>' 
                                CssClass="info"></asp:Label><br />
                            
                            <asp:Label ID="Label5" runat="server" Text="Net Weight :"  CssClass="info1"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("netweight") %>' 
                                CssClass="info"></asp:Label><br />
                            
                            <asp:Label ID="Label7" runat="server" Text="Gold Purity :"  CssClass="info1"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("goldpurity") %>' CssClass="info"></asp:Label><br />
                            
                            <asp:Label ID="Label9" runat="server" Text="Wearing Style :"  CssClass="info1"></asp:Label>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("wearingstyle") %>' 
                                CssClass="info"></asp:Label><br />
                            
                            <asp:Label ID="Label11" runat="server" Text="Price :"  CssClass="info1"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("price") %>' CssClass="info"></asp:Label>
                        </p>
                        <div class="card-footer">
                        <asp:Button ID="Button1" runat="server" Text="View Detail" CssClass="btn btn-secondary detail" CommandName="viewdetail"  
                            CommandArgument='<%# Eval("productid") %>'/>
                        </div>
                  </div>   
                </div>
            </ItemTemplate>
            <SeparatorTemplate>
                    <table width="20">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </SeparatorTemplate>
        


        </asp:DataList>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
            ConnectionString="<%$ ConnectionStrings:shopConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Masterproduct] WHERE ([subcatid] = @subcatid)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="207" Name="subcatid" 
                    QueryStringField="subcatid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
</div>
</div>
</asp:Content>
