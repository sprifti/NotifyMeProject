<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmPassword.aspx.cs" Inherits="WebApplication9.confirmEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                <a class="navbar-brand" href="#">NotifyMe</a>
                </div>
            </div>
        </nav>
        <div  style="margin-left: 40%; margin-top: 15%">
            <h3>NotifyMe</h3>
            <br />
            <asp:TextBox class="form-control" Width="30%" type="password" ID="password" runat="server" placeholder="Fjalekalimi"></asp:TextBox>
            <br />
            <asp:TextBox class="form-control" Width="30%" type="password" ID="confirmPassword" runat="server" placeholder="Konfirmo Fjalekalimin"></asp:TextBox>
            <br />
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Konfrimo" Width="30%" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
        <br />
    
    </div>
    </form>
</body>
</html>
