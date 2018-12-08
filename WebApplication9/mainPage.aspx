<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="WebApplication9.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button runat="server" Text="Kryefaqja" OnClick="Unnamed1_Click" />
        <asp:Button runat="server" Text="Profil" OnClick="Unnamed2_Click" /> 
        <asp:Button runat="server" Text="Dil" OnClick="Unnamed3_Click" style="height: 26px" /> 
        <asp:Button ID="Button1" runat="server" Text="Njoftime" OnClick="Button1_Click" />
        <h2>Welcome</h2>

        <p>Some explanation about what this is all about</p>
        
    
    </div>
    </form>
</body>
</html>
