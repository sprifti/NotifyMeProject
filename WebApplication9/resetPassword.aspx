<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="WebApplication9.resetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
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
            <asp:Label Width="50%" Text="Pasi te shkruani email-in me te cilin jeni regjistruar ne do ju dergojm nje email me ane te te cilit mund te ndryshoni email-in tuaj" runat="server" />
            <br />
            <asp:TextBox class="form-control" Width="30%" type="email" ID="email" runat="server" placeholder="Email"></asp:TextBox>
            <br />
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Dergo" Width="30%" OnClick="Button1_Click" />


        </div>
        <br />
    
    </div>
    </div>
    </form>
</body>
</html>
