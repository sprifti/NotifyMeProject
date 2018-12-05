<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body style="margin-left: 40%; margin-top : 15%">
    <form ID="form1" runat="server">
       <h3>NotifyMe</h3>
        <asp:TextBox class="form-control" width="30%" type="text" ID="name" runat="server" placeholder="Emri" ></asp:TextBox>
        <br />
        <asp:TextBox class="form-control"  width="30%" type="email" ID="email" runat="server" placeholder="Email"></asp:TextBox>
        <span ID="paragraf"></span><br />
   
        <asp:TextBox class="form-control" width="30%" type="password" ID="password" runat="server" placeholder="Password"></asp:TextBox>
        <span ID="passwordp"></span><br />
        <asp:Button CssClass="btn btn-primary" width="30%"  ID="Button1" runat="server" OnClick="Button1_Click" Text="Regjistrohu" />
    </form>
    <br />
    <asp:Label ID="error" runat="server"></asp:Label>
</body>
</html>
