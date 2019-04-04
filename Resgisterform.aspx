<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resgisterform.aspx.cs" Inherits="tambeshop.Resgisterform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootstrap4/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap4/bootstrap.js" type="text/javascript"></script>
    <link href="Bootstrap4/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap4/bootstrap.min.js" type="text/javascript"></script>
    <script src="Bootstrap4/jquery.min.js" type="text/javascript"></script>
    <script src="Bootstrap4/popper.min.js" type="text/javascript"></script>
    <link href="Css2.1/registration.css" rel="stylesheet" type="text/css" />
    <title>Resgistration</title> 
    
    <style type="text/css">
        .style1
        {
            padding-top:15px;
            width: 92%;
            height: 424px;
        }
        .style5
        {
            width: 289px;
        }
        .style6
        {
            width: 289px;
            height: 55px;
        }
        .style7
        {
            height: 55px;
        }
    </style>
    
</head>
<body style="background-image: url('Admin panel/Images/welcomepagebg.jpg'); background-repeat: no-repeat; background-size:cover; ">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="750px" Width="900">
        <div class="container-fluid">
            <div class="row" align="center">
                <asp:Label ID="Label1" runat="server" Text="Welcome To Tambe Jewellerys Resgister With Us Now"></asp:Label><br />
                
            </div>
            <div class="row">
            <div class="col-md-8">
                
                <table class="style1">
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label3" runat="server" Text="UserID:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Enter in numbers" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label4" runat="server" Text="Date:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label5" runat="server" Text="Name:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label6" runat="server" Text="Middle Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label7" runat="server" Text="Surname:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label8" runat="server" Text="Email:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label9" runat="server" Text="Mobile No:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label10" runat="server" Text="Tele-phone No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label11" runat="server" Text="Area &amp; house:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label12" runat="server" Text="Country:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label13" runat="server" Text="State:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label14" runat="server" Text="City:*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label15" runat="server" Text="Adhar No:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label16" runat="server" Text="Password:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" align="right">
                            <asp:Label ID="Label17" runat="server" Text="Conform Password:*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
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
                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="BACK" />
                        </td>
                    </tr>
                </table>
                
            </div>
            </div>
        </div>
    </asp:Panel>
    </form>
</body>
</html>
