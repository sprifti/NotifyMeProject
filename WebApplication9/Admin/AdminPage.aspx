<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication9.AdminPage" %>

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
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/Admin/UserManagement.aspx"><span class="glyphicon glyphicon-profile "></span>Menaxho Perdoruesit</asp:HyperLink>
                    </li>
                </ul>
             <%--   <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="register" runat="server" NavigateUrl ="~/Register.aspx"><span class="glyphicon glyphicon-plus "></span>Regjistrohu</asp:HyperLink>
                    </li>
                </ul> 
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="login" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Logohu</asp:HyperLink>
                    </li>        
                </ul>--%>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Email], [Name], [Password], [Company], [Normal_user], [confirm_code], [created], [admin]) VALUES (@Email, @Name, @Password, @Company, @Normal_user, @confirm_code, @created, @admin)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Email] = @Email, [Name] = @Name, [Password] = @Password, [Company] = @Company, [Normal_user] = @Normal_user, [confirm_code] = @confirm_code, [created] = @created, [admin] = @admin WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Normal_user" Type="String" />
                        <asp:Parameter Name="confirm_code" Type="String" />
                        <asp:Parameter Name="created" Type="String" />
                        <asp:Parameter Name="admin" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Normal_user" Type="String" />
                        <asp:Parameter Name="confirm_code" Type="String" />
                        <asp:Parameter Name="created" Type="String" />
                        <asp:Parameter Name="admin" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              
                </div>
        </nav>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="304px" Width="1095px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Normal_user" HeaderText="Normal_user" SortExpression="Normal_user" />
                <asp:BoundField DataField="confirm_code" HeaderText="confirm_code" SortExpression="confirm_code" />
                <asp:BoundField DataField="created" HeaderText="created" SortExpression="created" />
                <asp:BoundField DataField="admin" HeaderText="admin" SortExpression="admin" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
