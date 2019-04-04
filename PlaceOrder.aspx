<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="tambeshop.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Css2.1/placeorder.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <asp:Label ID="Label1" runat="server" CssClass="title" Text="Check Out Your Shopping cart...... "></asp:Label>
        </div>
        <div class="row justify-content-center">
            <asp:Label ID="Label15" runat="server" CssClass="detailsorder" Text="Products:"></asp:Label>
            <asp:Label ID="Label14" runat="server" CssClass="subtitle" Text=""></asp:Label>
        </div>
        <div class="row justify-content-center">
            <asp:Label ID="Label2" runat="server" Text="Order ID:" CssClass="detailsorder"></asp:Label><asp:Label ID="Label4" runat="server" Text="" CssClass="subtitle"></asp:Label><br />  
        </div>
        
        <div class="row justify-content-center">
             <asp:Label ID="Label3" runat="server" Text="Order Date:" CssClass="detailsorder"></asp:Label><asp:Label ID="Label5" runat="server" Text="" CssClass="subtitle"></asp:Label>
        </div>

        <div class="row">
        <div class="col-md-1"></div>
            <div class="col-md-11">
                <div class="table-responsive table-responsive-sm" style=" margin:0px; padding:0px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="100%">
                        <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Sr No.">
                            <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="productid" HeaderText="Product ID">
                            <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" />
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
                        
                    </Columns>
                    </asp:GridView>
                </div>
             </div>
       </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="row justify-content-center" style="padding-top:15px; padding-bottom:15px;">
                    <asp:Label ID="Label30" runat="server" Text="Select Payment Method" CssClass="detailsorder"></asp:Label>
                </div>
                <div class="row justify-content-center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table class="table" style="width:100%;">
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                            oncheckedchanged="RadioButton1_CheckedChanged" GroupName="Payment" 
                                            CssClass="rounded-circle" Height="40px" Width="40px" /><asp:Label ID="Label21" runat="server" Text="Cod" ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                            GroupName="Payment" oncheckedchanged="RadioButton2_CheckedChanged"  /><asp:Label ID="Label20" runat="server" Text="Debit Card"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <asp:Panel ID="Panel2" runat="server" Width="500px" CssClass="justify-content-center">
                                <asp:Label ID="Label22" runat="server" CssClass="subtitle" Text="Proceed To place Order...."></asp:Label>
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server" Width="500px">
                            
                                 <table class="table table-hover" style="width:100%;">
                                <tr align="center">
                                    <div class="form-group">
                                    <td colspan="2">
                                        <asp:Label ID="Label23" runat="server" CssClass="detailsorder" Text="Enter Your Card Details"></asp:Label>
                                    </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="form-group">
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="Acc Holder Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="form-group">
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="Card Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="form-group">
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text="CVV NO."></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    </div>
                                </tr>
                                <tr align="center">
                                    <div class="form-group">
                                    <td colspan="2">
                                        <asp:Label ID="Label29" runat="server" Text="Enter Expiry Date of card"></asp:Label>
                                    </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="form-group">
                                    <td align="center">
                                        <asp:Label ID="Label27" runat="server" Text=" Month"></asp:Label>
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem> 1</asp:ListItem>
                                            <asp:ListItem> 2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label28" runat="server" Text="Year"></asp:Label>
                                        <asp:DropDownList ID="DropDownList5" runat="server">
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2021</asp:ListItem>
                                            <asp:ListItem>2022</asp:ListItem>
                                            <asp:ListItem>2023</asp:ListItem>
                                            <asp:ListItem>2024</asp:ListItem>
                                            <asp:ListItem>2025</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div class="form-group">
                                    <td colspan="2" align="center">
                                        <asp:Button ID="Button4" runat="server" Text="Pay Now.." Height="35px" CssClass="btn btn-success border-dark form-control" Font-Size="Large" />
                                    </td>
                                    </div>
                                </tr>
                            </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="row justify-content-center" style="padding-top:15px; padding-bottom:15px;">
                    <asp:Label ID="Label31" runat="server" Text="Enter Your Information" CssClass="detailsorder"></asp:Label>
                </div>
                <div class="row justify-content-center">
                    <div class="table table-responsive" style=" width:100%">
                        <table class="table-bordered table-hover" width="100%">
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" CssClass="detailss" Text="Your Name :"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" CssClass="detailss" Text="Your Email :"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" CssClass="detailss" Text="Mobile No :"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" CssClass="form-control" Font-Size="Large"></asp:TextBox>    
                                        </div>
                                        <asp:Button ID="Button2" runat="server" Text="Send OTP" 
                                            CssClass="btn btn-lg btn-primary rounded-pill" onclick="Button2_Click" />
                                        <div class="row justify-content-center">
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <table class="table-bordered table-responsive-sm" border="1">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label16" runat="server" CssClass="detailss" Text="Enter Your OTP HERE:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        
                                                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                                        
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button3" CssClass="btn btn-lg btn-success rounded-pill" 
                                                                runat="server" Text="VERIFY" onclick="Button3_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                    </asp:Panel>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <asp:Label ID="Label18" runat="server" Font-Size="X-Large" ForeColor="Green" Text=""></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" CssClass="detailss" Text="Address :"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-inline">
                                            <asp:Label ID="Label13" runat="server" CssClass="detailss" Text="Pin-Code:"></asp:Label>
                                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-inline">
                                        <asp:Label ID="Label10" runat="server" CssClass="detailss" Text="City :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Kolhapur</asp:ListItem>
                                                <asp:ListItem>Sangli</asp:ListItem>
                                                <asp:ListItem>Satara</asp:ListItem>
                                                <asp:ListItem>Karad</asp:ListItem>
                                                <asp:ListItem>Pune</asp:ListItem>
                                                <asp:ListItem>Mumbai</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="Label11" runat="server" CssClass="detailss" Text="State :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>Maharashtra</asp:ListItem>
                                                <asp:ListItem>Karnataka</asp:ListItem>
                                                <asp:ListItem>Rajastan</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                                <asp:ListItem>Goa</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="Label12" runat="server" CssClass="detailss" Text="Country :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>India</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        
        <div class="row justify-content-center">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label17" runat="server" Font-Size="X-Large" ForeColor="Red" Text="* Verify Your Mobile Number & Place Your Order"></asp:Label>`
                    <asp:Button ID="Button1" runat="server" Text="Place Order.." CssClass=" btn btn-lg btn-success " Width="120px" Height="40px" Font-Size="Large" onclick="Button1_Click"/>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            
            
        </div>
    </div>
</asp:Content>
