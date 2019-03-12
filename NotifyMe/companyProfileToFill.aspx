<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="companyProfileToFill.aspx.cs" Inherits="WebApplication9.WebForm3" %>

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
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/companyProfile.aspx">
                        <span class="glyphicon glyphicon-user "></span>
                    Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
    </div>
    <br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-12">
            <h2 class="text-center">Ju lutem plotesoni informacionin mbi kompanine tuaj</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-sm-12 col-lg-4">
           <asp:Label ID="Label1" runat="server" Text="Emri i kompanise"></asp:Label><br />
           <asp:TextBox ID="name" runat="server" class="form-control"></asp:TextBox><br /> 
        </div>
        <div class="col-md-4 col-sm-12 col-lg-4">
           <asp:Label ID="Label2" runat="server" Text="Numer kontakti"></asp:Label><br />
           <asp:TextBox ID="contactnumber" runat="server" class="form-control"></asp:TextBox><br /> 
        </div>
        <div class="col-md-4 col-sm-12 col-lg-4">
           <asp:Label ID="Label3" runat="server" Text="Email kontakti"></asp:Label><br />
           <asp:TextBox ID="contactemail" runat="server" class="form-control"></asp:TextBox><br />
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
                       <asp:Label ID="Label10" runat="server" Text="Fusha e operimit"></asp:Label><br />
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
    <br />
    <div class="row">
        <div class="col-md-6 col-sm-12 col-lg-6">
           <asp:Label ID="Label4" runat="server" Text="Rreth nesh"></asp:Label><br />
            <textarea id="description" cols="20" rows="5" runat="server" class="form-control"></textarea><br />
        </div>

        <div class="col-md-6 col-sm-12 col-lg-6">
           <asp:Label ID="Label9" runat="server" Text="Eksperiencat tona"></asp:Label><br />
           <textarea id="experiences" cols="20" rows="5" runat="server" class="form-control"></textarea>
        </div>
    </div>
    <br>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-12">
            <h2 class="text-center">Ku mund te ju gjejme?</h2>
        </div>
    </div>
    <br>
            <div class="row">
                <div class="col-md-4 col-sm-12 col-lg-4">
                   <asp:Label ID="Label5" runat="server" Text="Rruga"></asp:Label>
                   <asp:TextBox ID="street" runat="server" class="form-control"></asp:TextBox>
                </div>
            
                <div class="col-md-4 col-sm-12 col-lg-4">
                  <asp:Label ID="Label6" runat="server" Text="Qyteti"></asp:Label>
                  <asp:TextBox ID="city" runat="server" class="form-control"></asp:TextBox>
                </div>
            
                <div class="col-md-4 col-sm-12 col-lg-4">
                   <asp:Label ID="Label7" runat="server" Text="Shteti"></asp:Label>
                   <asp:TextBox ID="state" runat="server" class="form-control"></asp:TextBox><br />
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-12">
                    <asp:Button ID="Button1" runat="server" Text="Krijo profilin" OnClick="Button1_Click" class="btn btn-primary"/>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>