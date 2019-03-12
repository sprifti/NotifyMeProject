<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="WebApplication9.Userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
  .thead_{
    margin-left: 23%;
    padding: 20px 20px;
  }
  .thead1_{
      margin-left: 45%;
      padding: 20px 20px;
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
        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx">
        <span class="glyphicon glyphicon-log-out "></span>
    Dil</asp:HyperLink>
</li>        
</ul>
        


</div>
</nav>
<form id="form1" runat="server">
   <div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="text-center header font-type">Personal Information</h2>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Users.Name, UserInfo.contact_number, UserInfo.contact_email, UserInfo.description, OperationField.name AS [operation field] FROM UserInfo INNER JOIN Users ON UserInfo.id_user = Users.Id INNER JOIN OperationField ON UserInfo.operation_field = OperationField.Id WHERE (Users.Id = @id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="id" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="education" runat="server" DataSourceID="SqlDataSource1">
<AlternatingItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Emri Mbiemri:<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Numer kontaktit:<asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                Email kontakti:<asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                Rreth meje:<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                Operoj ne fushen e:<asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
            </div>
        </span>
    </div>
</AlternatingItemTemplate>

<EditItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Name:<asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                contact_number:<asp:TextBox ID="contact_numberTextBox" runat="server" Text='<%# Bind("contact_number") %>' />
                <br />
                contact_email:<asp:TextBox ID="contact_emailTextBox" runat="server" Text='<%# Bind("contact_email") %>' />
                <br />
                description:<asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                operation field:<asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("[operation field]") %>' />
                <br />
                <hr>
                <div>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"  class="btn btn-success"/> 
                </div>
                <hr>
                <div>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
                </div>
            </div>
        </span>
    </div>
</EditItemTemplate>

<EmptyDataTemplate>
    <div class="cart center-block ">
        <span>Te dhenat nuk jane plotesuar.</span>
    </div>
</EmptyDataTemplate>

<InsertItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Name:<asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                contact_number:<asp:TextBox ID="contact_numberTextBox" runat="server" Text='<%# Bind("contact_number") %>' />
                <br />
                contact_email:<asp:TextBox ID="contact_emailTextBox" runat="server" Text='<%# Bind("contact_email") %>' />
                <br />
                description:<asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                operation field:<asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("[operation field]") %>' />
                <br />
                <hr>
                <div>
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  class="btn btn-success"/>
                </div>
                <hr>
                <div>
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning" />
                </div>  
            </div>
        </span>
    </div>
</InsertItemTemplate>

<ItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Emri Mbiemri: <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Numer kontakti: <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                Email kontakti: <asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                Rreth meje: <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                Operoj ne fushen e : <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
            </div>
        </span>
    </div>
</ItemTemplate>

<LayoutTemplate>
    <div id="itemPlaceholderContainer" runat="server" style="" class="cart center-block ">
        <span runat="server" id="itemPlaceholder" />
    </div>
    <div style="">
    </div>
</LayoutTemplate>

<SelectedItemTemplate>
    <div class="cart center-block ">
        <span style="">
            <div>
                Name:<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                contact_number:<asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                contact_email:<asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                description:<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                operation field:<asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
            </div>
        </span>
    </div>
</SelectedItemTemplate>
</asp:ListView>
<br />
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h2 class="text-center header font-type">Edukimi</h2>
    </div>
</div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [education] AS Edukimi, [name] AS Emri, [degree_name] AS Dega, [city] AS Qyteti, [state] AS Shteti FROM [Education] WHERE ([id_user] = @id_user)">
<SelectParameters>
    <asp:QueryStringParameter Name="id_user" QueryStringField="id" Type="Int32" />
</SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
<AlternatingItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="EdukimiLabel" runat="server" Text='<%# Eval("Edukimi") %>' />
        </td>
        <td>
            <asp:Label ID="EmriLabel" runat="server" Text='<%# Eval("Emri") %>' />
        </td>
        <td>
            <asp:Label ID="DegaLabel" runat="server" Text='<%# Eval("Dega") %>' />
        </td>
        <td>
            <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
        </td>
        <td>
            <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
        </td>
    </tr>
</AlternatingItemTemplate>
<EditItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div>
                 <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
            </div>
            <hr>
            <div>
               <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
            </div>
            
        </td>
        <td>
            <asp:TextBox ID="EdukimiTextBox" runat="server" Text='<%# Bind("Edukimi") %>' />
        </td>
        <td>
            <asp:TextBox ID="EmriTextBox" runat="server" Text='<%# Bind("Emri") %>' />
        </td>
        <td>
            <asp:TextBox ID="DegaTextBox" runat="server" Text='<%# Bind("Dega") %>' />
        </td>
        <td>
            <asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
        </td>
        <td>
            <asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
        </td>
    </tr>
</EditItemTemplate>

<EmptyDataTemplate>
    <table runat="server" class="table">
        <tr class="danger text-center">
            <td>Te dhenat nuk jane plotesuar.</td>
        </tr>
    </table>
</EmptyDataTemplate>

<InsertItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div>
                 <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success" />
            </div>
            <hr>
            <div>
               <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
            </div>
        </td>
        <td>
            <asp:TextBox ID="EdukimiTextBox" runat="server" Text='<%# Bind("Edukimi") %>' />
        </td>
        <td>
            <asp:TextBox ID="EmriTextBox" runat="server" Text='<%# Bind("Emri") %>' />
        </td>
        <td>
            <asp:TextBox ID="DegaTextBox" runat="server" Text='<%# Bind("Dega") %>' />
        </td>
        <td>
            <asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
        </td>
        <td>
            <asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
        </td>
    </tr>
</InsertItemTemplate>

<ItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="EdukimiLabel" runat="server" Text='<%# Eval("Edukimi") %>' />
        </td>
        <td>
            <asp:Label ID="EmriLabel" runat="server" Text='<%# Eval("Emri") %>' />
        </td>
        <td>
            <asp:Label ID="DegaLabel" runat="server" Text='<%# Eval("Dega") %>' />
        </td>
        <td>
            <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
        </td>
        <td>
            <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
        </td>
    </tr>
</ItemTemplate>

<LayoutTemplate>
    <div class="container">
    <table runat="server" >
        <tr runat="server">
            <td runat="server">
                <table id="itemPlaceholderContainer" runat="server" class="table thead1_"  style="margin-left:30%">
                    <tr runat="server" class="danger text-center ">
                        <th runat="server">Edukimi</th>
                        <th runat="server">Emri</th>
                        <th runat="server">Dega</th>
                        <th runat="server">Qyteti</th>
                        <th runat="server">Shteti</th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server">
                    </tr>
                </table>
            </td>
        </tr>
        <tr runat="server">
            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
        </tr>
    </table>
    </div>
</LayoutTemplate>

<SelectedItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="EdukimiLabel" runat="server" Text='<%# Eval("Edukimi") %>' />
        </td>
        <td>
            <asp:Label ID="EmriLabel" runat="server" Text='<%# Eval("Emri") %>' />
        </td>
        <td>
            <asp:Label ID="DegaLabel" runat="server" Text='<%# Eval("Dega") %>' />
        </td>
        <td>
            <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
        </td>
        <td>
            <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
        </td>
    </tr>
</SelectedItemTemplate>
</asp:ListView>
<br />
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h2 class="text-center header font-type">Gjuhet e huaja</h2>
    </div>
</div>

<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT language AS Gjuha, speaking AS Folura ,listening AS Degjim, writing AS Shkrim FROM Language where id_user = @id
">
<SelectParameters>
    <asp:QueryStringParameter Name="id" QueryStringField="id" />
</SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
<AlternatingItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="GjuhaLabel" runat="server" Text='<%# Eval("Gjuha") %>' />
        </td>
        <td>
            <asp:Label ID="FoluraLabel" runat="server" Text='<%# Eval("Folura") %>' />
        </td>
        <td>
            <asp:Label ID="DegjimLabel" runat="server" Text='<%# Eval("Degjim") %>' />
        </td>
        <td>
            <asp:Label ID="ShkrimLabel" runat="server" Text='<%# Eval("Shkrim") %>' />
        </td>
    </tr>
</AlternatingItemTemplate>
<EditItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div >
                 <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"  class="btn btn-success"/>
            </div>
            <hr>
            <div>
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
            </div>
        </td>
        <td>
            <asp:TextBox ID="GjuhaTextBox" runat="server" Text='<%# Bind("Gjuha") %>' />
        </td>
        <td>
            <asp:TextBox ID="FoluraTextBox" runat="server" Text='<%# Bind("Folura") %>' />
        </td>
        <td>
            <asp:TextBox ID="DegjimTextBox" runat="server" Text='<%# Bind("Degjim") %>' />
        </td>
        <td>
            <asp:TextBox ID="ShkrimTextBox" runat="server" Text='<%# Bind("Shkrim") %>' />
        </td>
    </tr>
</EditItemTemplate>

<EmptyDataTemplate>
    <table runat="server" class="table">
        <tr class="danger text-center">
            <td>Te dhenat nuk jane plotesuar.</td>
        </tr>
    </table>
</EmptyDataTemplate>

<InsertItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div>
                 <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success" />
            </div>
            <hr>
            <div>
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
            </div>
        </td>
        <td>
            <asp:TextBox ID="GjuhaTextBox" runat="server" Text='<%# Bind("Gjuha") %>' />
        </td>
        <td>
            <asp:TextBox ID="FoluraTextBox" runat="server" Text='<%# Bind("Folura") %>' />
        </td>
        <td>
            <asp:TextBox ID="DegjimTextBox" runat="server" Text='<%# Bind("Degjim") %>' />
        </td>
        <td>
            <asp:TextBox ID="ShkrimTextBox" runat="server" Text='<%# Bind("Shkrim") %>' />
        </td>
    </tr>
</InsertItemTemplate>

<ItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="GjuhaLabel" runat="server" Text='<%# Eval("Gjuha") %>' />
        </td>
        <td>
            <asp:Label ID="FoluraLabel" runat="server" Text='<%# Eval("Folura") %>' />
        </td>
        <td>
            <asp:Label ID="DegjimLabel" runat="server" Text='<%# Eval("Degjim") %>' />
        </td>
        <td>
            <asp:Label ID="ShkrimLabel" runat="server" Text='<%# Eval("Shkrim") %>' />
        </td>
    </tr>
</ItemTemplate>

<LayoutTemplate>
    <table runat="server">
        <tr runat="server">
            <td runat="server">
                <table id="itemPlaceholderContainer" runat="server" class="table thead_" style="margin-left:100%">
                    <tr runat="server" class="danger text-center">
                        <th runat="server">Gjuha e huaj</th>
                        <th runat="server">Te folurit</th>
                        <th runat="server">Te kuptuarit</th>
                        <th runat="server">Te shkruarit</th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server" class="danger text-center">
                    </tr>
                </table>
            </td>
        </tr>
        <tr runat="server" class="danger text-center">
            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
        </tr>
    </table>
</LayoutTemplate>

<SelectedItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="GjuhaLabel" runat="server" Text='<%# Eval("Gjuha") %>' />
        </td>
        <td>
            <asp:Label ID="FoluraLabel" runat="server" Text='<%# Eval("Folura") %>' />
        </td>
        <td>
            <asp:Label ID="DegjimLabel" runat="server" Text='<%# Eval("Degjim") %>' />
        </td>
        <td>
            <asp:Label ID="ShkrimLabel" runat="server" Text='<%# Eval("Shkrim") %>' />
        </td>
    </tr>
</SelectedItemTemplate>
</asp:ListView>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h2 class="text-center header font-type">Eksperiencat</h2>
    </div>
</div>

<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT start_date AS Filluar, end_date AS Perfunduar, experience_description AS Pershkrim FROM Experiences where id_user = @id">
<SelectParameters>
    <asp:QueryStringParameter Name="id" QueryStringField="id" />
</SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource4">
<AlternatingItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Filluar me: <asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
        <br />
        Perfunduar me: <asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
        <br />
        Pershkrim:<asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
        </div>
    </span>
</div>
</AlternatingItemTemplate>

<EditItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>

        Filluar:<asp:TextBox ID="FilluarTextBox" runat="server" Text='<%# Bind("Filluar") %>' />
        <br />
        Perfunduar:<asp:TextBox ID="PerfunduarTextBox" runat="server" Text='<%# Bind("Perfunduar") %>' />
        <br />
        Pershkrim:<asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
        <br />
        <hr>
        <div>
             <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
        </div>
        <hr>
        <div>
           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-danger" />
        </div>
        
        
            </div>
        </span>
    </div>
</EditItemTemplate>

<EmptyDataTemplate>
    <div class="cart center-block ">
    <span>No data was returned.</span>
</div>
</EmptyDataTemplate>

<InsertItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Filluar:<asp:TextBox ID="FilluarTextBox" runat="server" Text='<%# Bind("Filluar") %>' />
        <br />
        Perfunduar:<asp:TextBox ID="PerfunduarTextBox" runat="server" Text='<%# Bind("Perfunduar") %>' />
        <br />
        Pershkrim:<asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
        <br />
        <hr>
        <div>
             <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success"/>
        </div>
        <hr>
        <div>
           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
        </div>
        
        
                </div>
            </span>
        </div>
</InsertItemTemplate>

<ItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Filluar me: <asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
        <br />
        Perfunduar me: <asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
        <br />
        Pershkrim:<asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                </div>
            </span>
        </div>
</ItemTemplate>

<LayoutTemplate>
    <div id="itemPlaceholderContainer" runat="server" style="" class="cart center-block ">
        <span runat="server" id="itemPlaceholder" />
    </div>
    <div style="">
    </div>
</LayoutTemplate>

<SelectedItemTemplate>
   <div class="cart center-block ">
   <span style="">
       <div>
        Filluar:<asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
        <br />
        Perfunduar:<asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
        <br />
        Pershkrim:<asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                </div>
            </span>
        </div>
</SelectedItemTemplate>
</asp:ListView>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h2 class="text-center header font-type">Aftesi te mira kompjuterike ne:</h2>
    </div>
</div>

<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT computerSkills AS &quot;Aftesi Kompjuterike&quot; FROM ComputerSkills  where id_user = @id">
<SelectParameters>
    <asp:QueryStringParameter Name="id" QueryStringField="id" />
</SelectParameters>
</asp:SqlDataSource>


<asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource5">
<AlternatingItemTemplate>
   <div class="cart center-block ">
   <span style="">
       <div>
        
        <asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
    </div>
    </span>
</div>
</AlternatingItemTemplate>


<EditItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Aftesi Kompjuterike:<asp:TextBox ID="Aftesi_KompjuterikeTextBox" runat="server" Text='<%# Bind("[Aftesi Kompjuterike]") %>' />
        <br />
        <hr>
        <div>
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-success"/>
        </div>
        <hr>
        <div>
           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel"  class="btn btn-danger"/>
        </div>
        </div>
    </span>
</div>
</EditItemTemplate>

<EmptyDataTemplate>
    <div class="cart center-block ">
    <span>Te dhenat nuk jane plotesuar.</span>
</div>
</EmptyDataTemplate>

<InsertItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Aftesi Kompjuterike:<asp:TextBox ID="Aftesi_KompjuterikeTextBox" runat="server" Text='<%# Bind("[Aftesi Kompjuterike]") %>' />
        <br />
        <hr>
        <div>
           <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  class="btn btn-success" />
        </div>
        <hr>
        <div>
           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
        </div>
        </div>
    </span>
</div>
</InsertItemTemplate>

<ItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        <asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
       </div>
    </span>
</div>
</ItemTemplate>

<LayoutTemplate>
    <div id="itemPlaceholderContainer" runat="server" style="">
        <span runat="server" id="itemPlaceholder" />
    </div>
    <div style="">
    </div>
</LayoutTemplate>

<SelectedItemTemplate>
    <div class="cart center-block ">
    <span style="">
        <div>
        Aftesi Kompjuterike:<asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
        </div>
    </span>
</div>
</SelectedItemTemplate>
</asp:ListView>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h2 class="text-center header font-type">Aftesi te tjera</h2>
    </div>
</div>
<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT skill_description AS 
&quot;Aftesi te tjera&quot; FROM Skills where id_user = @id">
<SelectParameters>
    <asp:QueryStringParameter Name="id" QueryStringField="id" />
</SelectParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource6">
<AlternatingItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
        </td>
    </tr>
</AlternatingItemTemplate>

<EditItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div>
               <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"   class="btn btn-success" />
            </div>
            <hr>
            <div>
               <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel"   class="btn btn-danger" />
            </div>
        </td>
        <td>
            <asp:TextBox ID="Aftesi_te_tjeraTextBox" runat="server" Text='<%# Bind("[Aftesi te tjera]") %>' />
        </td>
    </tr>
</EditItemTemplate>

<EmptyDataTemplate>
    <table runat="server" class="table">
        <tr class="danger text-center">
            <td>Te dhenat nuk jane plotesuar.</td>
        </tr>
    </table>
</EmptyDataTemplate>

<InsertItemTemplate>
    <tr class="danger text-center">
        <td>
            <hr>
            <div>
               <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" class="btn btn-success"/>
            </div>
            <hr>
            <div>
              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" class="btn btn-warning"/>
            </div>
        </td>
        <td>
            <asp:TextBox ID="Aftesi_te_tjeraTextBox" runat="server" Text='<%# Bind("[Aftesi te tjera]") %>' />
        </td>
    </tr>
</InsertItemTemplate>

<ItemTemplate>
    <tr class="danger text-center">
        <td>
            <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
        </td>
    </tr>
</ItemTemplate>

<LayoutTemplate>
    <table runat="server">
        <tr runat="server">
            <td runat="server">
                <table id="itemPlaceholderContainer" runat="server" border="0"  style="margin-left:180%" class="table thead_" >
                    <tr runat="server" class="danger text-center">
                        <th runat="server"></th>
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
    <tr class="danger text-center">
        <td>
            <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
        </td>
    </tr>
</SelectedItemTemplate>
</asp:ListView>

</div>

</form>

</body>
</html>