<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSkateboards.aspx.cs" Inherits="SkateFactory1.WebUI.Management.ManageSkateboards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Skateboards</title>
    <!--
        xs = extra small screens (<576px)
        sm = small screens (>=576px)
        md = medium screens (>=768px)
        lg = large screens (>=992px)

        Nice picture:
        https://i.stack.imgur.com/S1RYa.png

    -->
    <link href="../lib/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Site.css" rel="stylesheet" />
    
    <script src="../lib/bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h2>Manage Skateboards</h2>
            <asp:LinkButton ID="lkbSignOut" runat="server">Sign Out</asp:LinkButton>
        </div>
        <div class="container">
            <div class="row">
                <div style="background-color:yellow" class="col-md-6">
                    <asp:Label runat="server" Text="Name:"></asp:Label>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                    <asp:Label Text="Weight:" runat="server"></asp:Label>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Weight is required" ControlToValidate="txtWeight"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>


                    <asp:Label Text="Skate Type:" runat="server"></asp:Label>
                    <asp:CustomValidator ID="cvSkateType" runat="server" ErrorMessage="Skate Type is required"></asp:CustomValidator>
                    <asp:DropDownList ID="ddlSkateType" runat="server">
                        <asp:ListItem Value="0">Undefined</asp:ListItem>
                        <asp:ListItem Value="1">Electric</asp:ListItem>
                        <asp:ListItem Value="2">Regular</asp:ListItem>
                    </asp:DropDownList>


                    <asp:Label Text="Color:" runat="server"></asp:Label>
                    <asp:CustomValidator ID="cvColor" runat="server" ErrorMessage="Color is required"></asp:CustomValidator>
                    <asp:DropDownList ID="ddlColor" runat="server">
                        <asp:ListItem Value="0">Undefined</asp:ListItem>
                        <asp:ListItem Value="1">Red</asp:ListItem>
                        <asp:ListItem Value="2">Green</asp:ListItem>
                        <asp:ListItem Value="3">Blue</asp:ListItem>
                    </asp:DropDownList>


                    <asp:Label Text="Brake Type:" runat="server"></asp:Label>
                    <asp:CustomValidator ID="cvBrakeType" runat="server" ErrorMessage="Brake Type is required"></asp:CustomValidator>
                    <asp:DropDownList ID="ddlBrakeType" runat="server">
                        <asp:ListItem Value="0">Undefined</asp:ListItem>
                        <asp:ListItem Value="1">Dynamic</asp:ListItem>
                        <asp:ListItem Value="2">Friction</asp:ListItem>
                    </asp:DropDownList>

                     <asp:Label Text="Shape Type:" runat="server"></asp:Label>
                    <asp:CustomValidator ID="cvShapeType" runat="server" ErrorMessage="Shape Type is required"></asp:CustomValidator>
                    <asp:DropDownList ID="ddlShapeType" runat="server">
                        <asp:ListItem Value="0">Undefined</asp:ListItem>
                        <asp:ListItem Value="1">Plastic</asp:ListItem>
                        <asp:ListItem Value="2">Wood</asp:ListItem>
                    </asp:DropDownList>

                    <br />

                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Button ID="btnAdd" CssClass="btn btn-primary" Text="Add" runat="server" />
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnUpdate"  CssClass="btn btn-primary" Text="Update" runat="server" />
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div style="background-color:aqua" class="col-md-6">
                    <div class="col-md-3">
                                <asp:Button ID="Button1"  CssClass="btn btn-primary" Text="Update" runat="server" />
                                
                            </div>
                    <asp:DataGrid ID="dgSkateboards" Width="100%" runat="server" AutoGenerateColumns="False">


                    </asp:DataGrid>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
