<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
body { 
  background: url(work_atmosphere-2.jpg) no-repeat center  fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;

}
.forma{
    margin-left:40%;
    margin-top:15%;
}
.header{
    margin-left:7%;
}
.checkbox-text{
    color:darkgray;
    margin-left:5%;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
           <nav class="navbar navbar-inverse navbar-fixed-top">
               <div class="container">
                   <div class="navbar-header">
                        <a class="navbar-brand " href="#">NotifyMe</a>
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
        <div class="forma">
            <h3 class="header">NotifyMe</h3>
            <asp:TextBox class="form-control" Width="30%" type="text" ID="name" runat="server" placeholder="Emri Mbiemri"></asp:TextBox>
            <br />
            <asp:TextBox class="form-control" Width="30%" type="email" ID="email" runat="server" placeholder="Email"></asp:TextBox><br />
             <asp:Label ID="emailError" runat="server" Text=""></asp:Label>
            <asp:TextBox class="form-control" Width="30%" type="password" ID="password" runat="server" placeholder="Fjalekalimi" ></asp:TextBox><br />
            <asp:Label ID="passwordError" runat="server" Text=""></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Regjistrohu si kompani" class="checkbox-text"/>
            <br /><br />
            <asp:Button CssClass="btn btn-primary" Width="30%" ID="Button1" runat="server" OnClick="Button1_Click" Text="Regjistrohu" /><br />
        </div>
    </form>
    <br />
    <asp:Label ID="error" runat="server"></asp:Label>
</body>
</html>
