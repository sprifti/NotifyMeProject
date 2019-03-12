<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreferencePage.aspx.cs" Inherits="WebApplication9.PreferencePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preferencat</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [operatingFieldName] FROM [Preference]"></asp:SqlDataSource>
        <div class="row">
        	<div class="col-sm-12 col-md-12 col-lg-12">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="operatingFieldName" DataValueField="operatingFieldName"></asp:CheckBoxList>
    </div>
</div>
<br>
       <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Button ID="Button1" runat="server" Text="Vazhdo" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
