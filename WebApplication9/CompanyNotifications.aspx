<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyNotifications.aspx.cs" Inherits="WebApplication9.CompanyNotifications1" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select Users.name, OperationField.name as operating_field, skills, job_type, job_title, job_description, education_description, year_experience from CompanyNotifications inner join OperationField on CompanyNotifications.operation_field = OperationField.Id inner join Users on Users.id = CompanyNotifications.id_user  where operation_field in(select operatingField from User_Preferences where id_user = @id)
">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                operating_field:
                <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                <br />
                skills:
                <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                <br />
                job_type:
                <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                <br />
                job_title:
                <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                <br />
                job_description:
                <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                <br />
                education_description:
                <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                <br />
                year_experience:
                <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                operating_field:
                <asp:TextBox ID="operating_fieldTextBox" runat="server" Text='<%# Bind("operating_field") %>' />
                <br />
                skills:
                <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                <br />
                job_type:
                <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                <br />
                job_title:
                <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                <br />
                job_description:
                <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                <br />
                education_description:
                <asp:TextBox ID="education_descriptionTextBox" runat="server" Text='<%# Bind("education_description") %>' />
                <br />
                year_experience:
                <asp:TextBox ID="year_experienceTextBox" runat="server" Text='<%# Bind("year_experience") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />operating_field:
                <asp:TextBox ID="operating_fieldTextBox" runat="server" Text='<%# Bind("operating_field") %>' />
                <br />skills:
                <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                <br />job_type:
                <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                <br />job_title:
                <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                <br />job_description:
                <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                <br />education_description:
                <asp:TextBox ID="education_descriptionTextBox" runat="server" Text='<%# Bind("education_description") %>' />
                <br />year_experience:
                <asp:TextBox ID="year_experienceTextBox" runat="server" Text='<%# Bind("year_experience") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                operating_field:
                <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                <br />
                skills:
                <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                <br />
                job_type:
                <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                <br />
                job_title:
                <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                <br />
                job_description:
                <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                <br />
                education_description:
                <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                <br />
                year_experience:
                <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                <br />
<br /></span>
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
                operating_field:
                <asp:Label ID="operating_fieldLabel" runat="server" Text='<%# Eval("operating_field") %>' />
                <br />
                skills:
                <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                <br />
                job_type:
                <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                <br />
                job_title:
                <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                <br />
                job_description:
                <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                <br />
                education_description:
                <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                <br />
                year_experience:
                <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    </div>
    </form>
</body>
</html>
