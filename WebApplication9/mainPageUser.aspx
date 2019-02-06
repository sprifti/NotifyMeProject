<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPageUser.aspx.cs" Inherits="WebApplication9.mainPageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="notification" runat="server" NavigateUrl ="~/notifications.aspx"><span class="glyphicon glyphicon-folder-open"></span>Njoftime</asp:HyperLink>
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
        <h2>This is the user main page where he will be able to make posts and see all his posts</h2>
            
        <asp:Label ID="Label1" runat="server" Text="Fusha e operimit"></asp:Label>
        <select id="Select1" runat="server">
            <option value="s1" selected="selected">s1</option>
            <option value="s2">s2</option>
            <option value="s3">s3</option>
            <option value="s4">s4</option>
            <option value="s5">s5</option>
        </select><br />
        <asp:Label ID="Label2" runat="server" Text="Job title"></asp:Label><br />
        <asp:TextBox ID="jobtitle" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="job type"></asp:Label><br />
          <select id="Select2" runat="server">
            <option value="1" selected="selected">Kohe te pjeseshme</option>
            <option value="2">Kohe te plote</option>
            <option value="3">internship</option>
        </select><br />
        <asp:Label ID="label4" runat="server" Text="Description"></asp:Label><br />
        <textarea id="description" cols="20" rows="5" runat="server"></textarea><br />
        <asp:Button ID="Button1" runat="server" Text="Afisho" OnClick="Button1_Click" /><br />

           <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <h2>ktu fillojn postimet e user-it</h2>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT UserNotifications.job_title, UserNotifications.operation_field, jobType.type, UserNotifications.description FROM UserNotifications INNER JOIN jobType ON UserNotifications.job_type = jobType.Id WHERE (UserNotifications.id_user =@user )">
               <SelectParameters>
                   <asp:SessionParameter Name="user" SessionField="id" />
               </SelectParameters>
           </asp:SqlDataSource>
    <div>
           <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
               <AlternatingItemTemplate>
                   <span style="">job_title:
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                   <br />
                   operation_field:
                   <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                   <br />
                   type:
                   <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                   <br />
                   description:
                   <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                   <br />
                   <br />
                       <asp:Button ID="Button2" runat="server" Text="Fshij Postimin" />
                       <br />
                   </span>
               </AlternatingItemTemplate>
               <EditItemTemplate>
                   <span style="">job_title:
                   <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                   <br />
                   operation_field:
                   <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("operation_field") %>' />
                   <br />
                   type:
                   <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                   <br />
                   description:
                   <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                   <br />
                   <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                   <br />
                   <br />
                   </span>
               </EditItemTemplate>
               <EmptyDataTemplate>
                   <span>Ju nuk keni bere asnje noftim.</span>
               </EmptyDataTemplate>
               <InsertItemTemplate>
                   <span style="">job_title:
                   <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                   <br />
                   operation_field:
                   <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("operation_field") %>' />
                   <br />
                   type:
                   <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                   <br />
                   description:
                   <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                   <br />
                   <br />
                       
                   </span>
               </InsertItemTemplate>
               <ItemTemplate>
                   <span style="">job_title:
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                   <br />
                   operation_field:
                   <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                   <br />
                   type:
                   <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                   <br />
                   description:
                   <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                   <br />
                   <br />
                       <asp:Button ID="Button2" runat="server" Text="Fshij Postimin" />
                    <br />
                   </span>
               </ItemTemplate>
               <LayoutTemplate>
                   <div style="" id="itemPlaceholderContainer" runat="server">
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
                   <span style="">job_title:
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                   <br />
                   operation_field:
                   <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                   <br />
                   type:
                   <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                   <br />
                   description:
                   <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                   <br />
                   <br />
                   </span>
               </SelectedItemTemplate>
           </asp:ListView>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
