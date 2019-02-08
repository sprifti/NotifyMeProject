<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreferencePage.aspx.cs" Inherits="WebApplication9.PreferencePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [operatingFieldName] FROM [Preference]"></asp:SqlDataSource>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="operatingFieldName" DataValueField="operatingFieldName"></asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Vazhdo" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
