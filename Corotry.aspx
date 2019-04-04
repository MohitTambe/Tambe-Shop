<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Corotry.aspx.cs" Inherits="tambeshop.Corotry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="row">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
             <asp:DropDownList runat="server" ID="ddlmgs" AutoPostBack="True" 
                    onselectedindexchanged="Unnamed1_SelectedIndexChanged">
                <asp:ListItem Value="-1">none</asp:ListItem>
                 <asp:ListItem Value="1">Login Form</asp:ListItem>
                 <asp:ListItem Value="2">Registration</asp:ListItem>
             </asp:DropDownList>
             <asp:Panel runat="server" id="hellopanel">
                <div class="table table-responsive" style=" width:100%">
                        <table class="table-bordered" width="100%">
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="Your Name :"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" Text="Your Email :"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="Mobile No :"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" Text="Address :"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-inline">
                                            <asp:Label ID="Label13" runat="server" Text="Pin-Code:"></asp:Label>
                                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-inline">
                                        <asp:Label ID="Label10" runat="server" Text="City :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Kolhapur</asp:ListItem>
                                                <asp:ListItem>Sangli</asp:ListItem>
                                                <asp:ListItem>Satara</asp:ListItem>
                                                <asp:ListItem>Karad</asp:ListItem>
                                                <asp:ListItem>Pune</asp:ListItem>
                                                <asp:ListItem>Mumbai</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="Label11" runat="server" Text="State :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>Maharashtra</asp:ListItem>
                                                <asp:ListItem>Karnataka</asp:ListItem>
                                                <asp:ListItem>Rajastan</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                                <asp:ListItem>Goa</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="Label12" runat="server" Text="Country :"></asp:Label>
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>India</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
             </asp:Panel>
             <asp:Panel runat="server" id="byepanel">
                <table>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Labeluser" runat="server" Text="UserID:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Enter in numbers" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Labeldate" runat="server" Text="Date:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Labelname" runat="server" Text="Name:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label1" runat="server" Text="Middle Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label2" runat="server" Text="Surname:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Labelemail" runat="server" Text="Email:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label4" runat="server" Text="Mobile No:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label5" runat="server" Text="Tele-phone No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label14" runat="server" Text="Area &amp; house:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label15" runat="server" Text="Country:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label16" runat="server" Text="State:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label17" runat="server" Text="City:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label18" runat="server" Text="Adhar No:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label19" runat="server" Text="Password:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label20" runat="server" Text="Conform Password:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Button ID="Button1" runat="server" Text="RESET" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style7">
                            <asp:Button ID="Button2" runat="server" Text="SAVE" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style5">
                            &nbsp;</td>
                        <td align="center">
                            <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="BACK" />
                        </td>
                    </tr>
                </table>
             </asp:Panel>
           </ContentTemplate>
         </asp:UpdatePanel>
     </div>
</asp:Content>

