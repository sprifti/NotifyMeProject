<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyNotifications.aspx.cs" Inherits="WebApplication9.CompanyNotifications1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        .cart{
            border: 1px solid #4dd0e1;
            background-color:white;
            color:#455a64;
            font-size:16px;
            font-family: Arial, Helvetica, sans-serif;
            padding:12px 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
            width:70%;
            height:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">NotifyMe</a>
            </div>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/mainPage.aspx">
                            <span class="glyphicon glyphicon-home "></span>
                            Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Login.aspx">
                            <span class="glyphicon glyphicon-log-out "></span>
                            Dil</asp:HyperLink>
                    </li>        
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx">
                            <span class="glyphicon glyphicon-user "></span>
                            Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <div class="container">
        <div runat ="server" id="mainDiv" class="cart center-block" >
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
