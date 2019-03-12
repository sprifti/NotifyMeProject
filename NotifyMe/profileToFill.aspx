<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileToFill.aspx.cs" Inherits="WebApplication9.profileToFill" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
     <style type="text/css">
         body{
            background-color: #e0f7fa;
         }
     </style>
</head>
<body>
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
            </div>
        </nav>
         
    <form id="form1" runat="server" >
    <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                <h2 class="text-center">Informacion Personal</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6">
                <asp:Label ID="Label1" runat="server" Text="Numer kontakti"></asp:Label><br />
                <asp:TextBox ID="contactNumber" runat="server" class="form-control"></asp:TextBox><br />
            </div>
        
            <div class="col-sm-12 col-md-6 col-lg-6">
                <asp:Label ID="Label2" runat="server" Text="Email kontakti"></asp:Label><br />
                <asp:TextBox ID="contactEmail" runat="server" type="email" class="form-control"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label3" runat="server" Text="Kush jam une?"></asp:Label><br />
                <textarea id="description" cols="20" rows="5" runat="server" class="form-control"></textarea><br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="infoError" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label4" runat="server" Text="Fusha e operimit"></asp:Label><br />
                <select id="operationField" runat="server" class="form-control" >
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
                    <div class="col-md-12 col-sm-12 col-lg-12">
                <h2 class="text-center">Adresa ime</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-4 col-lg-4">
                <asp:Label ID="Label15" runat="server" Text="Rruga"></asp:Label>
            <asp:TextBox ID="street" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="col-sm-12 col-md-4 col-lg-4">
               <asp:Label ID="Label16" runat="server" Text="Qyteti"></asp:Label>
            <asp:TextBox ID="city" runat="server" class="form-control"></asp:TextBox>
            </div>
    
            <div class="col-sm-12 col-md-4 col-lg-4">
                <asp:Label ID="Label17" runat="server" Text="Shteti"></asp:Label>
            <asp:TextBox ID="state" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                <h2 class="text-center">Edukimi</h2>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Education] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Education] ([education], [name], [city], [state], [degree_name]) VALUES (@education, @name, @city, @state, @degree_name)" SelectCommand="SELECT [Id], [education], [name], [city], [state], [degree_name] FROM [Education] WHERE ([id_user] = @id_user)" UpdateCommand="UPDATE [Education] SET [education] = @education, [name] = @name, [city] = @city, [state] = @state, [degree_name] = @degree_name WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="name" Type="Int32" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="degree_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="name" Type="Int32" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="degree_name" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView5" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource5">
            <AlternatingItemTemplate>
                <tr class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger" />
                        </div>
                        
                    </td>
                   
                    <td>
                        <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="degree_nameLabel" runat="server" Text='<%# Eval("degree_name") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
                        </div>
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel"  class="btn btn-danger"/>
                        </div>
                          
                    </td>
                  
                    <td>
                        <asp:TextBox ID="educationTextBox" runat="server" Text='<%# Bind("education") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="degree_nameTextBox" runat="server" Text='<%# Bind("degree_name") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="table">
                    <tr class="danger text-center">
                        <td>Plotesoni te dhenat mbi edukimin.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success"/>
                        </div>
                        
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
                        </div>
                    </td>
                    
                    <td>
                        <asp:TextBox ID="educationTextBox" runat="server" Text='<%# Bind("education") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="degree_nameTextBox" runat="server" Text='<%# Bind("degree_name") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr class="danger text-center">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
               
                    <td>
                        <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="degree_nameLabel" runat="server" Text='<%# Eval("degree_name") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" style="" class="table">
                                <tr runat="server" class="danger text-center">
                                    <th runat="server"></th>
                                    
                                    <th runat="server">education</th>
                                    <th runat="server">name</th>
                                    <th runat="server">city</th>
                                    <th runat="server">state</th>
                                    <th runat="server">degree_name</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server" class="danger text-center">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger"/>
                        </div>
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="degree_nameLabel" runat="server" Text='<%# Eval("degree_name") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6">
                <asp:Label ID="Label5" runat="server" Text="Tipi i studimeve/ highschool or university"></asp:Label><br />
                 <select id="education" runat="server" class="form-control" >
                    <option value="Gjimnazi">Gjimnazi</option>
                    <option value="Universitet">Universitet</option>
                    <option value="Master">Master</option>
                    <option value="Doktorature">Doktorature</option>
                </select>
            </div>
        
            <div class="col-sm-12 col-md-6 col-lg-6">
                <asp:Label ID="Label6" runat="server" Text="Emri i institucionit"></asp:Label><br />
                <asp:TextBox ID="eduName" runat="server" class="form-control"></asp:TextBox><br />
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-4 col-lg-4">
                <asp:Label ID="Label7" runat="server" Text="Emri i deges/ ne rast uni"></asp:Label><br />
                <asp:TextBox ID="eduDegree" runat="server" class="form-control"></asp:TextBox><br />
            </div>
                    <div class="col-sm-12 col-md-4 col-lg-4">
                <asp:Label ID="Label8" runat="server" Text="Shteti"></asp:Label><br />
                <asp:TextBox ID="eduState" runat="server" class="form-control"></asp:TextBox><br />
            </div>
       
            <div class="col-sm-12 col-md-4 col-lg-4">
                <asp:Label ID="Label9" runat="server" Text="Qyteti"></asp:Label><br />
                <asp:TextBox ID="eduCity" runat="server" class="form-control"></asp:TextBox><br />
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Label ID="educationError" runat="server" Text=""></asp:Label>
               <asp:Button ID="Button6" runat="server" Text="Shto" OnClick="Button6_Click" class="btn btn-primary"/> 
            </div>
        </div>
        
       

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                <h2 class="text-center">Gjuhet e huaja</h2>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Language] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Language] ([language], [speaking], [listening], [writing]) VALUES (@language, @speaking, @listening, @writing)" SelectCommand="SELECT [language], [speaking], [listening], [writing], [Id] FROM [Language] WHERE ([id_user] = @id_user)" UpdateCommand="UPDATE [Language] SET [language] = @language, [speaking] = @speaking, [listening] = @listening, [writing] = @writing WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="language" Type="String" />
                <asp:Parameter Name="speaking" Type="String" />
                <asp:Parameter Name="listening" Type="String" />
                <asp:Parameter Name="writing" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="language" Type="String" />
                <asp:Parameter Name="speaking" Type="String" />
                <asp:Parameter Name="listening" Type="String" />
                <asp:Parameter Name="writing" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr class="text-center danger">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger"/>
                        </div>
                        
                        
                    </td>
                    <td>
                        <asp:Label ID="languageLabel" runat="server" Text='<%# Eval("language") %>' />
                    </td>
                    <td>
                        <asp:Label ID="speakingLabel" runat="server" Text='<%# Eval("speaking") %>' />
                    </td>
                    <td>
                        <asp:Label ID="listeningLabel" runat="server" Text='<%# Eval("listening") %>' />
                    </td>
                    <td>
                        <asp:Label ID="writingLabel" runat="server" Text='<%# Eval("writing") %>' />
                    </td>
                   
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="" class="text-center danger">
                    <td>
                        <div class="row">
                          <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
                        </div>
                        <div class="row">
                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
                        </div>
                    </td>
                    <td>
                        <asp:TextBox ID="languageTextBox" runat="server" Text='<%# Bind("language") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="speakingTextBox" runat="server" Text='<%# Bind("speaking") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="listeningTextBox" runat="server" Text='<%# Bind("listening") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="writingTextBox" runat="server" Text='<%# Bind("writing") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                </tr>
                
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="table">
                    <tr class="danger text-center">
                        <td>Shtoni gjuhet e huaja.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success" />
                        </div>
                        <div class="row">
                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning" />
                        </div>
                    </td>
                    <td>
                        <asp:TextBox ID="languageTextBox" runat="server" Text='<%# Bind("language") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="speakingTextBox" runat="server" Text='<%# Bind("speaking") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="listeningTextBox" runat="server" Text='<%# Bind("listening") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="writingTextBox" runat="server" Text='<%# Bind("writing") %>' />
                    </td>
                    <td></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  class="btn btn-danger"/>

                        </div>
                        
                     </td>
                    <td>
                        <asp:Label ID="languageLabel" runat="server" Text='<%# Eval("language") %>' />
                    </td>
                    <td>
                        <asp:Label ID="speakingLabel" runat="server" Text='<%# Eval("speaking") %>' />
                    </td>
                    <td>
                        <asp:Label ID="listeningLabel" runat="server" Text='<%# Eval("listening") %>' />
                    </td>
                    <td>
                        <asp:Label ID="writingLabel" runat="server" Text='<%# Eval("writing") %>' />
                    </td>

                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table">
                                <tr runat="server" style="" class="danger text-center">
                                    <th runat="server"></th>
                                    <th runat="server">language</th>
                                    <th runat="server">speaking</th>
                                    <th runat="server">listening</th>
                                    <th runat="server">writing</th>
                                   
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server" class="danger text-center">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger"/>
                        </div>
                        
                        
                    </td>
                    <td>
                        <asp:Label ID="languageLabel" runat="server" Text='<%# Eval("language") %>' />
                    </td>
                    <td>
                        <asp:Label ID="speakingLabel" runat="server" Text='<%# Eval("speaking") %>' />
                    </td>
                    <td>
                        <asp:Label ID="listeningLabel" runat="server" Text='<%# Eval("listening") %>' />
                    </td>
                    <td>
                        <asp:Label ID="writingLabel" runat="server" Text='<%# Eval("writing") %>' />
                    </td>
                 
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:Table ID="Table1" runat="server"  class="table">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>
                    Gjuha
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    Te folurit
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                  Te shkruarit
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    Te degjuarit
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                       <select id="language" runat="server" class="form-control">
                       <option value="Anglisht">Anglisht</option>
                           <option value="Italisht">Italisht</option>
                           <option value="Gjermanisht">Gjermanisht</option>
                           <option value="Spanjisht">Spanjisht</option>
                           <option value="Turqisht">Turqisht</option>
                           <option value="Greqisht">Greqisht</option>
                       </select>
                    </div>
                </div>
                </asp:TableCell>
                
                <asp:TableCell>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                      <select id="speaking" runat="server" class="form-control">
                          <option value="A1">A1</option>
                          <option value="A2">A2</option>
                          <option value="B1">B1</option>
                          <option value="B2">B2</option>
                          <option value="C1">C1</option>
                          <option value="C2">C2</option>
                      </select>
                    </div>
                </div>
                </asp:TableCell>
                
                <asp:TableCell>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                      <select id="writing" runat="server" class="form-control">
                           <option value="A1">A1</option>
                           <option value="A2">A2</option>
                           <option value="B1">B1</option>
                           <option value="B2">B2</option>
                           <option value="C1">C1</option>
                           <option value="C2">C2</option>
                       </select>
                    </div>
                </div>
                </asp:TableCell>
                
                <asp:TableCell>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                     <select id="listening" runat="server" class="form-control">
                          <option value="A1">A1</option>
                          <option value="A2">A2</option>
                          <option value="B1">B1</option>
                          <option value="B2">B2</option>
                          <option value="C1">C1</option>
                          <option value="C2">C2</option>
                      </select>
                    </div>
                </div>
                </asp:TableCell>
                
                <asp:TableCell>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                     <asp:Button ID="Button2" runat="server" Text="Shto" OnClick="Button1_Click"  class="btn btn-primary"/>
                 </div>
             </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                <h2 class="text-center">Aftesite kompjuterike</h2>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ComputerSkills] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ComputerSkills] ([computerSkills]) VALUES (@computerSkills)" SelectCommand="SELECT [computerSkills], [Id] FROM [ComputerSkills] WHERE ([id_user] = @id_user)" UpdateCommand="UPDATE [ComputerSkills] SET [computerSkills] = @computerSkills WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="computerSkills" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="computerSkills" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="computerSkillsLabel" runat="server" Text='<%# Eval("computerSkills") %>' />
                    </td>
                 
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
                        </div>
                        
                        <div class="row">
                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
                        </div>
                        
                        
                        
                    </td>
                    <td>
                        <asp:TextBox ID="computerSkillsTextBox" runat="server" Text='<%# Bind("computerSkills") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="table">
                    <tr class="danger text-center">
                        <td>Shtoni aftesite kompjuterike.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success" />
                        </div>
                        
                        <div class="row">
                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning" />
                        </div>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="computerSkillsTextBox" runat="server" Text='<%# Bind("computerSkills") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  class="btn btn-danger"/>
                        </div>
                        

                    </td>
                    <td>
                        <asp:Label ID="computerSkillsLabel" runat="server" Text='<%# Eval("computerSkills") %>' />
                    </td>
                
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table" style="">
                                <tr runat="server" style="" class="danger text-center">
                                    <th runat="server"></th>
                                    <th runat="server">computerSkills</th>
                                    
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server" class="danger text-center">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                          <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  class="btn btn-danger"/>
                        </div>
                        
                    </td>
                    <td>
                        <asp:Label ID="computerSkillsLabel" runat="server" Text='<%# Eval("computerSkills") %>' />
                    </td>
                    
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label10" runat="server" Text="Aftesi kompjuterike"></asp:Label><br />
               <textarea id="cmpSkills" cols="20" rows="5" runat="server" class="form-control"></textarea><br />  
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Label ID="cmpSkillsError" runat="server" Text=""></asp:Label>
               <asp:Button ID="Button3" runat="server" Text="Shto" OnClick="Button3_Click" class="btn btn-primary"/><br /> 
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Label ID="Label11" runat="server" Text="Aftesi te tjera"></asp:Label><br />
            </div>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Skills] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Skills] ([skill_description], [Id]) VALUES (@skill_description, @Id)" SelectCommand="SELECT [skill_description], [Id] FROM [Skills] WHERE ([id_user] = @id_user)" UpdateCommand="UPDATE [Skills] SET [skill_description] = @skill_description WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="skill_description" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="skill_description" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  class="btn btn-danger"/>
                        </div>
                        
                    </td>
                    <td>
                        <asp:Label ID="skill_descriptionLabel" runat="server" Text='<%# Eval("skill_description") %>' />
                    </td>
                    
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"  class="btn btn-success"/>
                        </div>
                        
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel"  class="btn btn-danger"/>
                        </div>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="skill_descriptionTextBox" runat="server" Text='<%# Bind("skill_description") %>' />
                    </td>
                 
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="table">
                    <tr class="danger text-center">
                        <td>Aftesi te tjera?</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success" />
                        </div>
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
                        </div>
                        
                       
                    </td>
                    <td>
                        <asp:TextBox ID="skill_descriptionTextBox" runat="server" Text='<%# Bind("skill_description") %>' />
                    </td>
                    
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger" />
                        </div>
                        
                    </td>
                    <td>
                        <asp:Label ID="skill_descriptionLabel" runat="server" Text='<%# Eval("skill_description") %>' />
                    </td>
                  
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table" style="">
                                <tr runat="server" style="" class="danger text-center">
                                    <th runat="server"></th>
                                    <th runat="server">skill_description</th>
                                    
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server" class="danger text-center">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger" />
                        </div>
                        
                        
                    </td>
                    <td>
                        <asp:Label ID="skill_descriptionLabel" runat="server" Text='<%# Eval("skill_description") %>' />
                    </td>
                   
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <textarea id="otherSkills" cols="20" rows="5" runat="server" class="form-control"></textarea><br />
            </div>
        </div>
        
<asp:Label ID="otherSkillsError" runat="server" Text=""></asp:Label>
      <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
             
             <asp:Button ID="Button4" runat="server" Text="Shto" OnClick="Button4_Click"  class="btn btn-primary" /> 
          </div>
      </div>
      

              <div class="row">
                  <div class="col-md-12 col-sm-12 col-lg-12">
              <h2 class="text-center">Eksperiencat</h2>
          </div>
      </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Experiences] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Experiences] ([Id], [experience_description], [start_date], [end_date]) VALUES (@Id, @experience_description, @start_date, @end_date)" SelectCommand="SELECT [Id], [experience_description], [start_date], [end_date] FROM [Experiences] WHERE ([id_user] = @id_user)" UpdateCommand="UPDATE [Experiences] SET [experience_description] = @experience_description, [start_date] = @start_date, [end_date] = @end_date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="experience_description" Type="String" />
                <asp:Parameter Name="start_date" Type="String" />
                <asp:Parameter Name="end_date" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="experience_description" Type="String" />
                <asp:Parameter Name="start_date" Type="String" />
                <asp:Parameter Name="end_date" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView4" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4">
            <AlternatingItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        
                        <div class="row">
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  class="btn btn-danger" />
                        </div>
                        
                    </td>
            
                    <td>
                        <asp:Label ID="experience_descriptionLabel" runat="server" Text='<%# Eval("experience_description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="start_dateLabel" runat="server" Text='<%# Eval("start_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"  class="btn btn-success"/>
                        </div>
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger" />
                        </div>
                        
    
                    </td>
                  
                    <td>
                        <asp:TextBox ID="experience_descriptionTextBox" runat="server" Text='<%# Bind("experience_description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="start_dateTextBox" runat="server" Text='<%# Bind("start_date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="table">
                    <tr class="danger text-center">
                        <td>Shtoni eksperiencat tuaja.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="" class="danger text-center">
                    <td> 
                        <div class="row">
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  class="btn btn-success"/>
                        </div>
                        <div class="row">
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
                        </div>
                        
                    </td>
                
                    <td>
                        <asp:TextBox ID="experience_descriptionTextBox" runat="server" Text='<%# Bind("experience_description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="start_dateTextBox" runat="server" Text='<%# Bind("start_date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" class="danger text-center">
                    <td>

                        <div class="row">
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger" />
                        </div>
                        
                    </td>
                   
                    <td>
                        <asp:Label ID="experience_descriptionLabel" runat="server" Text='<%# Eval("experience_description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="start_dateLabel" runat="server" Text='<%# Eval("start_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table" style="">
                                <tr runat="server" style="" class="danger text-center">
                                    <th runat="server"></th>
                                    
                                    <th runat="server">experience_description</th>
                                    <th runat="server">start_date</th>
                                    <th runat="server">end_date</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server" class="danger text-center">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="" class="danger text-center">
                    <td>
                        <div class="row">
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-danger"  />
                        </div>
                        
                    </td>
                 
                    <td>
                        <asp:Label ID="experience_descriptionLabel" runat="server" Text='<%# Eval("experience_description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="start_dateLabel" runat="server" Text='<%# Eval("start_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="end_dateLabel" runat="server" Text='<%# Eval("end_date") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label12" runat="server" Text="Pershkrimi i eksperiences"></asp:Label><br />
                <textarea id="experience" cols="20" rows="2" runat="server" class="form-control"></textarea><br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label13" runat="server" Text="Data e fillimit"></asp:Label><br />
                <asp:TextBox ID="startDate" runat="server" type="date" class="form-control"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:Label ID="Label14" runat="server" Text="Data e perfundimit"  ></asp:Label><br />
                <asp:TextBox ID="endDate" runat="server" type="date" class="form-control"></asp:TextBox><br />
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Label ID="experiencesError" runat="server" Text="" ></asp:Label>
               <asp:Button ID="Button5" runat="server" Text="Shto" OnClick="Button5_Click" class="btn btn-primary"/><br /> 
            </div>
        </div>
        
        


        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               <asp:Button ID="Button1" runat="server" Text="Krijo profilin" OnClick="Button1_Click2" class="btn btn-primary"/>
            </div>
        </div>
        
    </div>
    </form>
</body>
</html>