<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="WebApplication9.SendEmail" %>

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
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/mainPage.aspx"><span class="glyphicon glyphicon-home "></span>Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="notification" runat="server" NavigateUrl ="~/notifications.aspx"><span class="glyphicon glyphicon-folder-open"></span>Njoftime</asp:HyperLink>
                    </li>
                </ul>
                  <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx"><span class="glyphicon glyphicon-log-out "></span>Dil</asp:HyperLink>
                    </li>        
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Dil</asp:HyperLink>
                    </li>        
                </ul>
        
            </div>
        </nav>
        <p>you gonna send this to the dude that wrote the notification</p>
        <asp:Label ID="Label1" runat="server" Text="Email "></asp:Label>
        <asp:TextBox ID="useremail" runat="server" ReadOnly="true"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="Bcc"></asp:Label>
        <asp:TextBox ID="ouremail" runat="server" ReadOnly="true"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Subjekti"></asp:Label>
        <asp:TextBox ID="subject" runat="server" ReadOnly="true"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Mesazhi"></asp:Label><br />
        <textarea id="message" cols="40" rows="10" runat="server"></textarea><br />
        <asp:Button ID="send" runat="server" Text="Dergo" OnClick="send_Click" /><br />
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
