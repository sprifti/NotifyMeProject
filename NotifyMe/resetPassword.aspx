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
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                <a class="navbar-brand" href="#">NotifyMe</a>
                </div>
            </div>
        </nav>
        <br>
        <br><br><br>
        <div  class="container">
            <div class="row" style="margin-top:10%;" >
                <div class="col-md-12 col-sm-12 col-lg-12">
            <h3 class="text-center">NotifyMe</h3>
        </div>
    </div>
            <br />
            <p class="text-center">Vendosni email-in me te cilin jeni rregjistruar per te marre nje email per ndryshimin e fjalekalimit</p>
            <div style="margin-top:3%; margin-left: 43%">
            <div class="row">

                <div class="col-md-12 col-sm-12 col-lg-12">
                    
            <asp:TextBox class="form-control" Width="30%" type="text" ID="email" runat="server" placeholder="Email"></asp:TextBox>
                </div>
                
           </div>
                <br />
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Dergo" Width="30%" OnClick="Button1_Click" />
        </div>
            </div>
        <br />
    
    </div>
    </form>
</body>
</html>