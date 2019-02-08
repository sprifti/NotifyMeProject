<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="companyProfileToFill.aspx.cs" Inherits="WebApplication9.WebForm3" %>

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
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Dil</asp:HyperLink>
                    </li>        
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/companyProfile.aspx"><span class="glyphicon glyphicon-user "></span>Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
    </div>
        <div>
            <h1>Information</h1>
            <asp:Label ID="Label1" runat="server" Text="Emri i kompanise"></asp:Label><br />
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Numer kontakti"></asp:Label><br />
            <asp:TextBox ID="contactnumber" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Emer kontakti"></asp:Label><br />
            <asp:TextBox ID="contactemail" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label><br />
            <asp:TextBox ID="description" runat="server"></asp:TextBox><br />
            <h1>Address</h1>
            <asp:Label ID="Label5" runat="server" Text="Rruga"></asp:Label>
            <asp:TextBox ID="street" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Qyteti"></asp:Label>
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Shteti"></asp:Label>
            <asp:TextBox ID="state" runat="server"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" Text="Krio profilin" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
