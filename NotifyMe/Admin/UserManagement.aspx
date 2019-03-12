<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="WebApplication9.Admin.UserManagement" %>

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
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/Admin/AdminPage.aspx"><span class="glyphicon glyphicon-home "></span>Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>

        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Email], [Name], [Company], [confirm_code], [created], [approved] FROM [Users] WHERE (([Company] = @Company) AND ([created] = @created))" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Email], [Name], [Company], [confirm_code], [created], [approved]) VALUES (@Email, @Name, @Company, @confirm_code, @created, @approved)" UpdateCommand="UPDATE [Users] SET [Email] = @Email, [Name] = @Name, [Company] = @Company, [confirm_code] = @confirm_code, [created] = @created, [approved] = @approved WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="confirm_code" Type="String" />
                    <asp:Parameter Name="created" Type="String" />
                    <asp:Parameter Name="approved" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="Company" QueryStringField="1" Type="String" />
                    <asp:QueryStringParameter DefaultValue="1" Name="created" QueryStringField="1" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="confirm_code" Type="String" />
                    <asp:Parameter Name="created" Type="String" />
                    <asp:Parameter Name="approved" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <%--    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                    <asp:BoundField DataField="Normal_user" HeaderText="Normal_user" SortExpression="Normal_user" />
                    <asp:BoundField DataField="confirm_code" HeaderText="confirm_code" SortExpression="confirm_code" />
                    <asp:BoundField DataField="created" HeaderText="created" SortExpression="created" />
                    <asp:BoundField DataField="admin" HeaderText="admin" SortExpression="admin" />
                    <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
                </Columns>
            </asp:GridView>--%>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
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
                            <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                        </td>
                        <td>
                            <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
                        </td>
                        <td>
                            <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                            <asp:TextBox ID="confirm_codeTextBox" runat="server" Text='<%# Bind("confirm_code") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="createdTextBox" runat="server" Text='<%# Bind("created") %>' />
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
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
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
                            <asp:TextBox ID="confirm_codeTextBox" runat="server" Text='<%# Bind("confirm_code") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="createdTextBox" runat="server" Text='<%# Bind("created") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
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
                            <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                        </td>
                        <td>
                            <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
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
                                        <th runat="server"></th>
                                        <th runat="server">Id</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">Company</th>
                                        <th runat="server">confirm_code</th>
                                        <th runat="server">created</th>
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
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
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
                            <asp:Label ID="confirm_codeLabel" runat="server" Text='<%# Eval("confirm_code") %>' />
                        </td>
                        <td>
                            <asp:Label ID="createdLabel" runat="server" Text='<%# Eval("created") %>' />
                        </td>
                        <td>
                            <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

        </div>
    </div>
    </form>
</body>
</html>
