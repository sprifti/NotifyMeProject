<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPageUser.aspx.cs" Inherits="WebApplication9.mainPageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            border: 1px solid #00bcd4;
            background-color:#80deea;
            color:white;
            font-size:16px;
            font-family: Arial, Helvetica, sans-serif;
            padding:12px 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
            width:70%;
        }
        .font-type{
           font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                            <span class="glyphicon glyphicon-log-out "></ span>
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

           <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
               <h2 class="text-center header font-type">MIRESEERDHET</h2>
             </div>
           </div>
               <div class="row">
                   <div class="col-lg-6 col-md-6 col-sm-12">
        <asp:Label ID="Label1" runat="server" Text="Fusha e operimit" class="header"></asp:Label> <br />
        <select id="Select1" runat="server" class="form-control">
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

                   <div  class="col-sm-12 col-lg-6 col-md-6 ">
                     <asp:Label ID="Labe12" runat="server" Text="Pozicioni" class="header"></asp:Label>
                     <asp:TextBox ID="jobtitle" runat="server" class="form-control"></asp:TextBox>
                   </div>
                   </div>
               <br />
               <div class="row">
                   <div  class="col-sm-12 col-lg-12 col-md-12 ">
                        <asp:Label ID="Label3" runat="server" Text="Orari i punes" class="header"></asp:Label><br />
                         <select id="Select2" runat="server" class="form-control">
                          <option value="1" selected="selected">Kohe te pjeseshme</option>
                          <option value="2">Kohe te plote</option>
                         <option value="3">internship</option>
                          </select><br />
                   </div>
                   <div  class="col-sm-12 col-lg-12 col-md-12 ">
                       <asp:Label ID="label4" runat="server" Text="Aftesite tuaja" class="header"></asp:Label><br />
                       <textarea id="Textarea1" cols="20" rows="5" runat="server" class="form-control"></textarea><br />
                   </div>
                   </div>
                   <div class="row">
                       <div class="col-sm-12 col-lg-12 col-md-12 ">
                         <asp:Button ID="Button1" runat="server" Text="Publiko" OnClick="Button1_Click" class="btn center-block btn-color" />
                           <br />
                       </div>
                   </div>
           <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
               <div class="row">
                   <div class="col-sm-12 col-lg-12 col-md-12 ">
                      <h2 class="text-center header">Postimet tuaja</h2>
                   </div>
               </div>
               <br />
          
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT UserNotifications.job_title, jobType.type, UserNotifications.description, OperationField.name FROM UserNotifications INNER JOIN jobType ON UserNotifications.job_type = jobType.Id INNER JOIN OperationField ON UserNotifications.operation_field = OperationField.Id WHERE (UserNotifications.id_user = @user )">
               <SelectParameters>
                   <asp:SessionParameter Name="user" SessionField="id" />
               </SelectParameters>
           </asp:SqlDataSource>
    <div>
           <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
               <AlternatingItemTemplate>
                   <div class=" cart center-block">
                   <span> <div>
                       Kerkoje te punesohem si 
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' /> me 
                   <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />.
                   <br />
                   Cfare ofroje une:
                   <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                   </div>
                   <br />
                   </span>
                   </div>
               </AlternatingItemTemplate>
               <EditItemTemplate>
                   <span style="">job_title:
                   <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                   <br />
                   name:
                   <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                   <br />
                   type:
                   <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                   <br />
                   description:
                   <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                   <br />
                   <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn center-block btn-success " />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn center-block btn-danger"/>
                   <br />
                   <br />
                   </span>
               </EditItemTemplate>
               <EmptyDataTemplate>
                   <span><div class=" cart center-block">Ju nuk keni bere asnje njoftim</div></span>
               </EmptyDataTemplate>
               <InsertItemTemplate>
                   <span style="">job_title:
                   <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                   <br />
                   name:
                   <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                   <br />
                   type:
                   <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                   <br />
                   description:
                   <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn center-block btn-primary" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn center-block btn-warning" />
                   <br />
                   <br />
                       
                   </span>
               </InsertItemTemplate>
                   <ItemTemplate>
                       <div class=" cart center-block">
                   <span ><div class="">Kerkoje te punesohem si
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                        me 
                   <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />.<br />
                     Cfare ofroje une:
                   <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                   <br />
                       </div> 
                   </span>
                           </div>
                   </ItemTemplate>
                  
                  
               

               <LayoutTemplate>
                   <div style="" id="itemPlaceholderContainer" runat="server">
                       <span runat="server" id="itemPlaceholder" />
                   </div>
                   <div style="">
                   </div>
               </LayoutTemplate>
               <SelectedItemTemplate>
                   <span style="">job_title:
                   <asp:Label ID="job_titleLabel" runat="server" Text='<%# Eval("job_title") %>' />
                   <br />
                   name:
                   <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
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
    </div>
    </form>
</body>
</html>
