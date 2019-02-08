<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication9.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">NotifyMe</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/welcomePage.aspx"><span class="glyphicon glyphicon-home "></span>Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="register" runat="server" NavigateUrl ="~/Register.aspx"><span class="glyphicon glyphicon-plus "></span>Regjistrohu</asp:HyperLink>
                    </li>
                </ul> 
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="login" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Logohu</asp:HyperLink>
                    </li>        
                </ul>
              
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
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/resetPassword.aspx">Keni harruar fjalekalimin?</asp:HyperLink>
    
        </div>
        <br />
       </form>
</body>
</html>
