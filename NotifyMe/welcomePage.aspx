<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcomePage.aspx.cs" Inherits="WebApplication9.welcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kryefaqja</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
body { 
  background: url(cover2.jpg) no-repeat center  fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
</head>
<body >
    <form id="form1" runat="server">
    <div >
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
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
                    <li class="active">
                        <asp:HyperLink ID="login" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Logohu</asp:HyperLink>
                    </li>        
                </ul>
              
            </div>
      </nav>
        <div class="bg">

        </div>
    </div>
    </form>
</body>
</html>
