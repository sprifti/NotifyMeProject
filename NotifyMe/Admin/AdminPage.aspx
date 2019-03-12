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
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/Admin/UserManagement.aspx"><span class="glyphicon glyphicon-profile "></span>Aprovo Perdoruesit</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/Admin/AdminManagement.aspx"><span class="glyphicon glyphicon-eye-open "></span> Admin </asp:HyperLink>
                    </li>
                </ul>
                 <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Admin/AdminLogin.aspx"><span class="glyphicon glyphicon-log-out "></span>Dil</asp:HyperLink>
                    </li>        
                </ul>

            </div>
        </nav>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Email], [Name], [Company], [Normal_user], [confirm_code], [created], [admin]) VALUES (@Email, @Name, @Company, @Normal_user, @confirm_code, @created, @admin)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Email] = @Email, [Name] = @Name, [Company] = @Company, [Normal_user] = @Normal_user, [confirm_code] = @confirm_code, [created] = @created, [admin] = @admin WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Normal_user" Type="String" />
                        <asp:Parameter Name="confirm_code" Type="String" />
                        <asp:Parameter Name="created" Type="String" />
                        <asp:Parameter Name="admin" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Normal_user" Type="String" />
                        <asp:Parameter Name="confirm_code" Type="String" />
                        <asp:Parameter Name="created" Type="String" />
                        <asp:Parameter Name="admin" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button CssClass="btn btn-danger" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Button CssClass="btn btn-default" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                   
                    <td>
                        <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Normal_userLabel" runat="server" Text='<%# Eval("Normal_user") %>' />
                    </td>
                    <td>
                        <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                    </td>
                    <td>
                        <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
                    </td>
                    <td>
                        <asp:Label ID="adminLabel" runat="server" Text='<%# Eval("admin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #000000;">
                    <td>
                        <asp:Button CssClass="btn btn-success" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    </td>
                    <td>
                        <asp:Button CssClass="btn btn-danger" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                   
                    <td>
                        <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Normal_userTextBox" runat="server" Text='<%# Bind("Normal_user") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="confirm_codeTextBox" runat="server" Text='<%# Bind("confirm_code") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="createdTextBox" runat="server" Text='<%# Bind("created") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="adminTextBox" runat="server" Text='<%# Bind("admin") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="btn btn-success" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    </td>
                    <td>
                        <asp:Button CssClass="btn btn-default"  ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
              
                    <td>
                        <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Normal_userTextBox" runat="server" Text='<%# Bind("Normal_user") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="confirm_codeTextBox" runat="server" Text='<%# Bind("confirm_code") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="createdTextBox" runat="server" Text='<%# Bind("created") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="adminTextBox" runat="server" Text='<%# Bind("admin") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button CssClass="btn btn-danger" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Button CssClass="btn btn-default" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
          
                    <td>
                        <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Normal_userLabel" runat="server" Text='<%# Eval("Normal_user") %>' />
                    </td>
                    <td>
                        <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                    </td>
                    <td>
                        <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
                    </td>
                    <td>
                        <asp:Label ID="adminLabel" runat="server" Text='<%# Eval("admin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server" ></th>
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Name</th>
                                    
                                    <th runat="server">Company</th>
                                    <th runat="server">Normal_user</th>
                                    <th runat="server">confirm_code</th>
                                    <th runat="server">created</th>
                                    <th runat="server">admin</th>
                                    <th runat="server">approved</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                   
                    <td>
                        <asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Normal_userLabel" runat="server" Text='<%# Eval("Normal_user") %>' />
                    </td>
                    <td>
                        <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                    </td>
                    <td>
                        <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
                    </td>
                    <td>
                        <asp:Label ID="adminLabel" runat="server" Text='<%# Eval("admin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
