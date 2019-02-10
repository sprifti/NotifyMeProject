<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserNotifications.aspx.cs" Inherits="WebApplication9.UserNotifications1" %>

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
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/mainPage.aspx"><span class="glyphicon glyphicon-home "></span>Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Login.aspx"><span class="glyphicon glyphicon-log-out "></span>Dil</asp:HyperLink>
                    </li>        
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx"><span class="glyphicon glyphicon-user "></span>Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select Users.name, id_user ,job_title, job_type, description, OperationField.name as operating_field from UserNotifications inner join OperationField on UserNotifications.operation_field = OperationField.Id inner join Users on Users.id = UserNotifications.id_user  where operation_field in(select operatingField from User_Preferences where id_user = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    id_user:
                    <asp:Label ID="id_userLabel" runat="server" Text='<%# Eval("id_user") %>' />
                    <br />
                    job_title:
                    <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                    <br />
                    job_type:
                    <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    operating_field:
                    <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                    <br />
                    <br />
                        <asp:Button ID="Button1" runat="server" Text="vizito profilin" />
                        <asp:Button ID="Button2" runat="server" Text="Krijo takim" />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    id_user:
                    <asp:TextBox ID="id_userTextBox" runat="server" Text='<%# Bind("id_user") %>' />
                    <br />
                    job_title:
                    <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                    <br />
                    job_type:
                    <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    operating_field:
                    <asp:TextBox ID="operating_fieldTextBox" runat="server" Text='<%# Bind("operating_field") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    id_user:
                    <asp:TextBox ID="id_userTextBox" runat="server" Text='<%# Bind("id_user") %>' />
                    <br />
                    job_title:
                    <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                    <br />
                    job_type:
                    <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    operating_field:
                    <asp:TextBox ID="operating_fieldTextBox" runat="server" Text='<%# Bind("operating_field") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    id_user:
                    <asp:Label ID="id_userLabel" runat="server" Text='<%# Eval("id_user") %>' />
                    <br />
                    job_title:
                    <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                    <br />
                    job_type:
                    <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    operating_field:
                    <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                    <br />
                       
                    <br />
                        <asp:Button ID="Button1" runat="server" Text="vizito profilin" />
                        <asp:Button ID="Button2" runat="server" Text="Krijo takim" />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    id_user:
                    <asp:Label ID="id_userLabel" runat="server" Text='<%# Eval("id_user") %>' />
                    <br />
                    job_title:
                    <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                    <br />
                    job_type:
                    <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    operating_field:
                    <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </div>
    </form>
</body>
</html>
