<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication9.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">NotifyMe</a>
                </div>
             
            </div>
        </nav>
                <div  style="margin-left: 40%; margin-top: 15%">
            <h3>NotifyMe</h3>
            <br />
            <asp:TextBox class="form-control" Width="30%" type="email" ID="email" runat="server" placeholder="Email"></asp:TextBox>
            <span id="paragraf"></span>
            <br />

            <asp:TextBox class="form-control" Width="30%" type="password" ID="password" runat="server" placeholder="Password"></asp:TextBox>
            <br />
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Logohu" Width="30%" OnClick="Button1_Click" />
            <span id="passwordp"></span>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
    </div>
    </form>
</body>
</html>
