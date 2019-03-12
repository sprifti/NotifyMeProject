<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPageCompany.aspx.cs" Inherits="WebApplication9.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Kryefaqja</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        .header{
            color:#00bcd4;
            font-family: Arial, Helvetica, sans-serif;
        }
         .btn-color{
            background-color:#00bcd4;
            color:white;
            width:70%;
        }
         .cart{
            border: 1px solid #4dd0e1;
            background-color:#4dd0e1;
            color:white;
            font-size:16px;
            font-family: Arial, Helvetica, sans-serif;
            padding:12px 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
            width:70%;
            height:auto;
            margin-bottom: 5%;
        }
         .delete_btn{
             background-color:#f44336;

         }
         .center-block1{
             background-color:#26c6da;
             border: 1px solid #26c6da;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">NotifyMe</a>
            </div>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="home" runat="server" NavigateUrl ="~/mainPage.aspx">
                            <span class="glyphicon glyphicon-home "></span>
                            Kryefaqja</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:HyperLink ID="notification" runat="server" NavigateUrl ="~/notifications.aspx">
                            <span class="glyphicon glyphicon-folder-open"></span>
                            Njoftime</asp:HyperLink>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="logout" runat="server" NavigateUrl ="~/Login.aspx">
                            <span class="glyphicon glyphicon-log-out "></span>
                            Dil</asp:HyperLink>
                    </li>        
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx">
                            <span class="glyphicon glyphicon-user "></span>
                            Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
        <br />
        <br />
        <br />

        <div class="container">
        <div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="text-center header">Krijo nje lajmerim</h2>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                   <div class="col-lg-4 col-md-4 col-sm-12">
            <asp:Label ID="Label2" runat="server" Text="Pozicioni" class="header"></asp:Label><br />
            <asp:TextBox ID="jobtitle" runat="server" class="form-control"></asp:TextBox><br />
                       </div>
                <div class="col-lg-2 col-md-2 col-sm-12">
             <asp:Label ID="Label6" runat="server" Text="Gjinia" class="header"></asp:Label><br />
               <select id="gender" runat="server" class="form-control" >
                <option value="M">M</option>
                <option value="F">F</option>
            </select>
                  </div>
                   <div class="col-lg-6 col-md-6 col-sm-12">
            <asp:Label ID="Label1" runat="server" Text="Fusha e operimit" class="header"></asp:Label><br />
            <select id="operationField" runat="server" class="form-control">
             <option value="1">Kontabel-Finance</option>
                <option value="2">Administrative-Zyre</option>
                <option value="3">Ndertim-Aftesi</option>
                <option value="4">Biznes-Menaxhim Strategjik</option>
                <option value="5">Krijues -Dizajn</option>
                <option value="6">Perkujdesie-Ndihme per Klientin</option>
                <option value="7">Editoriale-Shkrim</option>
                <option value="8">Inxhinieri</option>
                <option value="9">Instalime-Mirembajtje-Riparime</option>
                <option value="10">IT-Zhvillim softesh</option>
                <option value="11">Ligjore</option>
                <option value="12">Marketing-Produkte</option>
                <option value="13">Hoteleri-Restorant-Kafe</option>
                <option value="14">Menaxhim Projektin -Dizajn</option>
                <option value="15">Sigurim I Cilesise-Siguria</option>
                <option value="16">Shitje-Zhvillim Biznesi</option>
                <option value="17">Mjeksore-Shendetsore</option>
            </select>
                </div>
                 </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
            <asp:Label ID="Label3" runat="server" Text="Orari i punes" class="header"></asp:Label><br />
              <select id="jobtype" runat="server" class="form-control">
                <option value="1" selected="selected">Kohe te pjeseshme</option>
                <option value="2">Kohe te plote</option>
                <option value="3">internship</option>
            </select>
                </div>
                   <div class="col-lg-6 col-md-6 col-sm-12">
            <asp:Label ID="Label4" runat="server" Text="Vite eksperience te kerkuara" class="header"></asp:Label><br />    
            <asp:TextBox ID="experience" runat="server" type="number" class="form-control"></asp:TextBox>
                       </div>
                </div>
            <br />
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
            <asp:Label ID="Label5" runat="server" Text="Aftesite e kerkuara" class="header"></asp:Label><br />
            <textarea id="skills" cols="20" rows="5" runat="server" class="form-control" ></textarea>
                     </div>
 
                   <div class="col-lg-4 col-md-4 col-sm-12">
            <asp:Label ID="Label7" runat="server" Text="Arsimi i kerkuar" class="header"></asp:Label><br />
            <textarea id="education" cols="20" rows="5" runat="server" class="form-control"></textarea>
                       </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
            <asp:Label ID="Label8" runat="server" Text="Nje pershkrim i shkurter rreth punes" class="header"></asp:Label><br />
            <textarea id="description" cols="20" rows="5" runat="server" class="form-control"></textarea>
                    </div>
                </div>
            <br />
            <br />
            <div class="row">
                   <div class="col-lg-12 col-md-12 col-sm-12">
            <asp:Button ID="Button2" runat="server" Text="Publiko" OnClick="Button2_Click" class="btn center-block btn-color" />
                       </div>
                </div>
            <asp:Label ID="errors" runat="server" Text=""></asp:Label>

        </div>
            <br />
            <div class="row">
                   <div class="col-sm-12 col-lg-12 col-md-12 ">
                      <h2 class="text-center header">Lajmerimet tuaja</h2>
                   </div>
               </div>

        <div class="row">
            <div class="card">
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CompanyNotifications] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyNotifications] ([operation_field], [job_type], [year_experience], [skills], [gender], [education_description], [job_description], [job_title]) VALUES (@operation_field, @job_type, @year_experience, @skills, @gender, @education_description, @job_description, @job_title)" SelectCommand="SELECT CompanyNotifications.year_experience, CompanyNotifications.skills, CompanyNotifications.gender, CompanyNotifications.education_description, CompanyNotifications.job_description, CompanyNotifications.job_title, CompanyNotifications.Id, OperationField.name AS operation_field, jobType.type AS job_type FROM CompanyNotifications INNER JOIN OperationField ON CompanyNotifications.operation_field = OperationField.Id INNER JOIN jobType ON CompanyNotifications.job_type = jobType.Id WHERE (CompanyNotifications.id_user = @id_user)" UpdateCommand="UPDATE [CompanyNotifications] SET [operation_field] = @operation_field, [job_type] = @job_type, [year_experience] = @year_experience, [skills] = @skills, [gender] = @gender, [education_description] = @education_description, [job_description] = @job_description, [job_title] = @job_title WHERE [Id] = @Id">
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
                        <div class=" cart center-block">
                        <span style=""> <div>
                            Kerkohet te punesohet nje <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' /> ne fushen e 
                        <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />,
                        ne nje pune me 
                        <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />.
                        Kerkohet te kene 
                        <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' />
                         vite eksperience si edhe te gezojne aftesite e meposhtme: <br />
                        <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                        <br />
                        <%--gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />--%>
                        Edukimi:
                        <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                        <br />
                        Pershkrimi i punes:
                        <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn center-block btn-danger" />
                        <br /><br />
                            </div>
                            </span>
                            </div>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <div class=" cart center-block">
                        <span style="">
                            <div>
                            operation_field:
                        <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("operation_field") %>' />
                        <br />job_type:
                        <asp:TextBox ID="job_typeTextBox" runat="server" Text='<%# Bind("job_type") %>' />
                        <br /> year_experience:
                        <asp:TextBox ID="year_experienceTextBox" runat="server" Text='<%# Bind("year_experience") %>' />
                        <br />skills:
                        <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                        <br />gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />education_description:
                        <asp:TextBox ID="education_descriptionTextBox" runat="server" Text='<%# Bind("education_description") %>' />
                        <br /> job_description:
                        <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                        <br />job_title:
                        <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                        <br />Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn center-block btn-success "/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn center-block btn-danger"/>
                        <br /><br />
                                </div>
                        </span>
                            </div>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <div class=" cart center-block">
                        <span>Ju nuk keni bere asnje njoftim</span>
                            </div>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <div class=" cart center-block">
                        <span style="">
                            <div></div>
                            operation_field:
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn center-block btn-success"  />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn center-block btn-danger" />
                            </div>
                        <br /><br />
                        </div>
                        </span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class=" cart  center-block ">
                        <span style=""> <div>
                            Kerkohet te punesohet nje <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' /> ne fushen e 
                        <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("operation_field") %>' />,
                       ne nje pune me 
                        <asp:Label ID="job_typeLabel" runat="server" Text='<%# Eval("job_type") %>' />.
                            Kerkohet te kene 
                        <asp:Label ID="year_experienceLabel" runat="server" Text='<%# Eval("year_experience") %>' /> vite eksperience si edhe te gezojne aftesite e meposhtme
                        <br />
                        <asp:Label ID="skillsLabel" runat="server" Text='<%# Eval("skills") %>' />
                        <br />
                        <%--gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />--%>
                        Edukimi: <br />
                        <asp:Label ID="education_descriptionLabel" runat="server" Text='<%# Eval("education_description") %>' />
                        <br />
                        Pershkrimi i punes: <br />
                        <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Eval("job_description") %>' />
                        <br />
                            <br />
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn center-block btn-danger"/>
                            </div>
                        </span>
                            </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style=""  class=" cart center-block center-block1">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <div class=" cart center-block">
                        <span style="">
                            <div style="">operation_field:
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
                                </div>
                        <br /><br />

                        </span>
                            </div>
                    </SelectedItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
        </div>
    </form>

</body>
</html>
