﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompaniesProfile.aspx.cs" Inherits="WebApplication9.CompaniesProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<head runat="server">
    <title></title>
    <style type="text/css">
    body{
        background-color: #e0f7fa;
    }
    .cart{
      border: 1px solid #4dd0e1;
      background-color:white;
      color:#455a64;
      font-size:16px;
      font-family: Arial, Helvetica, sans-serif;
      padding:12px 5px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      text-align: center;
      width:70%;
      height:auto;
      border-radius: 10px;
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



<div>
    <div class="container">

       <div class="row">
           <div class="col-lg-12 col-md-12 col-sm-12">
               <h2 class="text-center header font-type">Information</h2>
           </div>
       </div>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CompanyInfo.name AS [Emri i kompanise], CompanyInfo.contact_number AS [Numer kontakti], CompanyInfo.contact_email AS [Email kontakti], CompanyInfo.description AS Pershkrim, OperationField.name AS [Fusha e Operimit] FROM CompanyInfo INNER JOIN OperationField ON CompanyInfo.operation_field = OperationField.Id WHERE (CompanyInfo.id_user = @id)">
       <SelectParameters>
        <asp:QueryStringParameter Name="id" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
<AlternatingItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Emri i kompanise:<asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
                <br />
                Numer kontakti:<asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
                <br />
                Email kontakti:<asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
                <br />
                Pershkrim:<asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
                Fusha e Operimit:<asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
            </div>
        </span>
    </div>
   
</AlternatingItemTemplate>
<EditItemTemplate>
    <div class="cart center-block">
        <span style="">
            <div>
                Emri i kompanise:<asp:TextBox ID="Emri_i_kompaniseTextBox" runat="server" Text='<%# Bind("[Emri i kompanise]") %>' />
                <br />
                Numer kontakti:<asp:TextBox ID="Numer_kontaktiTextBox" runat="server" Text='<%# Bind("[Numer kontakti]") %>' />
                <br />
                Email kontakti:<asp:TextBox ID="Email_kontaktiTextBox" runat="server" Text='<%# Bind("[Email kontakti]") %>' />
                <br />
                Pershkrim:<asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
                <br />
                Fusha e Operimit:<asp:TextBox ID="Fusha_e_OperimitTextBox" runat="server" Text='<%# Bind("[Fusha e Operimit]") %>' /><hr>
                <div>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
                </div>
                <br />
                
                <hr>
                <div>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel"  class="btn btn-danger"/>
                </div>
                
            </div>
        </span>
    </div>
    
</EditItemTemplate>
<EmptyDataTemplate>
    <div class="cart center-block">
    <span>No data was returned.</span>
    </div>
    
    
</EmptyDataTemplate>
<InsertItemTemplate>
    <div class="cart center-block">
    <span style="">
        <div>
        Emri i kompanise:<asp:TextBox ID="Emri_i_kompaniseTextBox" runat="server" Text='<%# Bind("[Emri i kompanise]") %>' />
        <br />
        Numer kontakti:<asp:TextBox ID="Numer_kontaktiTextBox" runat="server" Text='<%# Bind("[Numer kontakti]") %>' />
        <br />
        Email kontakti:<asp:TextBox ID="Email_kontaktiTextBox" runat="server" Text='<%# Bind("[Email kontakti]") %>' />
        <br />
        Pershkrim:<asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
        <br />
        Fusha e Operimit:<asp:TextBox ID="Fusha_e_OperimitTextBox" runat="server" Text='<%# Bind("[Fusha e Operimit]") %>' />
        <br />
        <hr>
        <div>
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  class="btn btn-success"/>
        </div>
        <hr>
        <div>
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-success" />
        </div>
        </div>
    </span>
    </div>
    </InsertItemTemplate>
    
    
    <ItemTemplate>
        <div class="cart center-block">
        <span style="">
            <div>
                Emri i kompanise: <br /><asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
            <br />
            Numer kontakti: <br /><asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
            <br />
            Email kontakti: <br /><asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
            <br />
            Pershkrim: <br /><asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
            <br />
            Fusha e Operimit: <br /><asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
            </div>
        </span>
    </div>
        </ItemTemplate>
        
        
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" class="cart center-block">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        
        
        <SelectedItemTemplate>
            <div class="cart center-block">
            <span style="">
                <div>
                Emri i kompanise:<asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
                <br />
                Numer kontakti:<asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
                <br />
                Email kontakti:<asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
                <br />
                Pershkrim:<asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
                Fusha e Operimit:<asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
                </div>
                </span>
                </div>
            </SelectedItemTemplate>
        </asp:ListView>
        
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h2 class="text-center header font-type">Address</h2>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT State AS Shteti, Town AS Qyteti, Street AS Rruga FROM Address where id_user = @id">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
    <AlternatingItemTemplate>
        <div class="cart center-block">
        <span style="">
            <div>
            Shteti:<asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
            <br />
            Qyteti:<asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
            <br />
            Rruga:<asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
            </div>
            </span>
            </div>
        </AlternatingItemTemplate>
  
        <EditItemTemplate>
            <div class="cart center-block">
            <span style="">
                <div>
                Shteti:<asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
                <br />
                Qyteti:<asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
                <br />
                Rruga:<asp:TextBox ID="RrugaTextBox" runat="server" Text='<%# Bind("Rruga") %>' />
                <br />
                <hr>
                <div>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success" />
                </div><hr>
                <div>
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger" />
                </div>
                </div>
                </span>
                </div>
            </EditItemTemplate>

            <EmptyDataTemplate>
                <div class="cart center-block">
                <span>Te dhenat nuk jane plotesuar.</span>
            </div>
            </EmptyDataTemplate>

            <InsertItemTemplate>
                <div class="cart center-block">
                <span style="">
                    <div>
                    Shteti:<asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
                    <br />
                    Qyteti:<asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
                    <br />
                    Rruga:<asp:TextBox ID="RrugaTextBox" runat="server" Text='<%# Bind("Rruga") %>' />
                    <br />
                    <hr>
                    <div>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-warning"/>
                    </div>
                    <hr>
                    <div>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-danger"/>
                    </div>
                    </div>
                    </span>
                    </div>
                </InsertItemTemplate>

                <ItemTemplate>
                    <div class="cart center-block">
                    <span style="">
                        <div>
                        Shteti: <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
                        <br />
                        Qyteti: <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
                        <br />
                        Rruga: <asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
                        </div>
                        </span>
                        </div>
                    </ItemTemplate>
              
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="" class="cart center-block">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>

                    <SelectedItemTemplate>
                        <div class="cart center-block">
                        <span style="">
                            <div>
                            Shteti:<asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
                            <br />
                            Qyteti:<asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
                            <br />
                            Rruga:<asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
                            </div>
                            </span>
                            </div>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </div>
            </form>
        </body>
        </html>
