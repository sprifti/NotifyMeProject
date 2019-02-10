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
            <select id="operationField" runat="server" >
			    <option value="1">L1</option>
			    <option value="2">L2</option>
			    <option value="3">L3</option>
			    <option value="4">L4</option>
			    <option value="5">L5</option>
			    <option value="6">L6</option>
            </select>
            <asp:Label ID="Label1" runat="server" Text="Emri i kompanise"></asp:Label><br />
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Numer kontakti"></asp:Label><br />
            <asp:TextBox ID="contactnumber" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Email kontakti"></asp:Label><br />
            <asp:TextBox ID="contactemail" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Rreth nesh"></asp:Label><br />
            <textarea id="description" cols="20" rows="5" runat="server"></textarea><br />
            <asp:Label ID="Label9" runat="server" Text="Eksperiencat tona"></asp:Label><br />
            <textarea id="experiences" cols="20" rows="5" runat="server"></textarea>
            
    <%--        <h1>Rrjetet sociale</h1>

            <asp:Label ID="Label15" runat="server" Text="Company Page"></asp:Label><br />
            <asp:TextBox ID="company" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label10" runat="server" Text="Facebook"></asp:Label><br />
            <asp:TextBox ID="facebook" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label11" runat="server" Text="Twitter"></asp:Label><br />
            <asp:TextBox ID="twitter" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label12" runat="server" Text="Linkedin"></asp:Label><br />
            <asp:TextBox ID="linkedin" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label13" runat="server" Text="Instagram"></asp:Label><br />
            <asp:TextBox ID="instagram" runat="server"></asp:TextBox>--%>

            <h1>Ku mund te na gjeni?</h1>
            <asp:Label ID="Label5" runat="server" Text="Rruga"></asp:Label>
            <asp:TextBox ID="street" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Qyteti"></asp:Label>
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Shteti"></asp:Label>
            <asp:TextBox ID="state" runat="server"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" Text="Krijo profilin" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
