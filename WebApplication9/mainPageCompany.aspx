<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPageCompany.aspx.cs" Inherits="WebApplication9.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Kryefaqja</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.row {
    margin-left:26%;
    margin-top:3%;
    width: 50%;
    padding: 0 10px;
}

/* Remove extra left and right margins, due to padding in columns */


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
 
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

    </style>
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
        <div>
            <h2>Welcome</h2>
            <asp:Label ID="Label2" runat="server" Text="Titulli i punes"></asp:Label><br />
            <asp:TextBox ID="jobtitle" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="Fusha e operimit"></asp:Label><br />
            <select id="operationField" runat="server" >
                <option value="1">L1</option>
                <option value="2">L2</option>
                <option value="3">L3</option>
                <option value="4">L4</option>
                <option value="5">L5</option>
                <option value="6">L6</option>
            </select><br />
            <asp:Label ID="Label3" runat="server" Text="Orari i punes"></asp:Label><br />
              <select id="jobtype" runat="server">
                <option value="1" selected="selected">Kohe te pjeseshme</option>
                <option value="2">Kohe te plote</option>
                <option value="3">internship</option>
            </select><br />
            <asp:Label ID="Label4" runat="server" Text="Vite eksperience"></asp:Label><br />
            <asp:TextBox ID="experience" runat="server" type="number"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Aftesite qe duhen te permbushen"></asp:Label><br />
            <textarea id="skills" cols="20" rows="5" runat="server"></textarea><br />
            <asp:Label ID="Label6" runat="server" Text="Gjinia"></asp:Label><br />
               <select id="gender" runat="server" >
                <option value="M">M</option>
                <option value="F">F</option>
            </select><br />
            <asp:Label ID="Label7" runat="server" Text="Arsimi qe kerkohet?"></asp:Label><br />
            <textarea id="education" cols="20" rows="5" runat="server"></textarea><br />
            <asp:Label ID="Label8" runat="server" Text="Cilat jane pergjigjesite e mia ne kete pozicion?"></asp:Label><br />
            <textarea id="description" cols="20" rows="5" runat="server"></textarea><br />
            <asp:Button ID="Button2" runat="server" Text="Publiko" OnClick="Button2_Click" />
             <asp:Label ID="errors" runat="server" Text="Label"></asp:Label>
        </div>


        <div class="row">
            <div class="card">
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CompanyNotifications] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyNotifications] ([operation_field], [job_type], [year_experience], [skills], [gender], [education_description], [job_description], [job_title]) VALUES (@operation_field, @job_type, @year_experience, @skills, @gender, @education_description, @job_description, @job_title)" SelectCommand="SELECT  CompanyNotifications.job_type, CompanyNotifications.year_experience, CompanyNotifications.skills, CompanyNotifications.gender, CompanyNotifications.education_description, CompanyNotifications.job_description, CompanyNotifications.job_title, CompanyNotifications.Id, OperationField.name as operation_field FROM CompanyNotifications INNER JOIN OperationField ON CompanyNotifications.operation_field = OperationField.Id WHERE (CompanyNotifications.id_user = @id_user)" UpdateCommand="UPDATE [CompanyNotifications] SET [operation_field] = @operation_field, [job_type] = @job_type, [year_experience] = @year_experience, [skills] = @skills, [gender] = @gender, [education_description] = @education_description, [job_description] = @job_description, [job_title] = @job_title WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="operation_field" Type="String" />
                        <asp:Parameter Name="job_type" Type="Int32" />
                        <asp:Parameter Name="year_experience" Type="String" />
                        <asp:Parameter Name="skills" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="education_description" Type="String" />
                        <asp:Parameter Name="job_description" Type="String" />
                        <asp:Parameter Name="job_title" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="operation_field" Type="String" />
                        <asp:Parameter Name="job_type" Type="Int32" />
                        <asp:Parameter Name="year_experience" Type="String" />
                        <asp:Parameter Name="skills" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="education_description" Type="String" />
                        <asp:Parameter Name="job_description" Type="String" />
                        <asp:Parameter Name="job_title" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <span style="">operation_field:
                        <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                        <br />
                        job_type:
                        <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                        <br />
                        year_experience:
                        <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                        <br />
                        skills:
                        <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        education_description:
                        <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                        <br />
                        job_description:
                        <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                        <br />
                        job_title:
                        <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                        <br />
     
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">operation_field:
                        <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("operation_field") %>' />
                        <br />
                        job_type:
                        <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                        <br />
                        year_experience:
                        <asp:TextBox ID="year_experienceTextBox" runat="server" Text='<%# Bind("year_experience") %>' />
                        <br />
                        skills:
                        <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                        <br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />
                        education_description:
                        <asp:TextBox ID="education_descriptionTextBox" runat="server" Text='<%# Bind("education_description") %>' />
                        <br />
                        job_description:
                        <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                        <br />
                        job_title:
                        <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                        <br />
                        Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /><br /></span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">operation_field:
                        <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("operation_field") %>' />
                        <br />job_type:
                        <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                        <br />year_experience:
                        <asp:TextBox ID="year_experienceTextBox" runat="server" Text='<%# Bind("year_experience") %>' />
                        <br />skills:
                        <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                        <br />gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />education_description:
                        <asp:TextBox ID="education_descriptionTextBox" runat="server" Text='<%# Bind("education_description") %>' />
                        <br />job_description:
                        <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                        <br />job_title:
                        <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /><br /></span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">operation_field:
                        <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                        <br />
                        job_type:
                        <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                        <br />
                        year_experience:
                        <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                        <br />
                        skills:
                        <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        education_description:
                        <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                        <br />
                        job_description:
                        <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                        <br />
                        job_title:
                        <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                        <br />
                   
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">operation_field:
                        <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />
                        <br />
                        job_type:
                        <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />
                        <br />
                        year_experience:
                        <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                        <br />
                        skills:
                        <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        education_description:
                        <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                        <br />
                        job_description:
                        <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                        <br />
                        job_title:
                        <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                        <br />
                        Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
                    </SelectedItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
