<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication9.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
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
        
            </div>
        </nav>
    <form id="form1" runat="server">
       
        <h1>Personal Information</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Users.Name, UserInfo.contact_number, UserInfo.contact_email, UserInfo.description, OperationField.name AS [operation field] FROM UserInfo INNER JOIN Users ON UserInfo.id_user = Users.Id INNER JOIN OperationField ON UserInfo.operation_field = OperationField.Id WHERE (Users.Id = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="education" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                contact_number:
                <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                contact_email:
                <asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                operation field:
                <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                contact_number:
                <asp:TextBox ID="contact_numberTextBox" runat="server" Text='<%# Bind("contact_number") %>' />
                <br />
                contact_email:
                <asp:TextBox ID="contact_emailTextBox" runat="server" Text='<%# Bind("contact_email") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                operation field:
                <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("[operation field]") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>Te dhenat personale nuk jane plotesuar.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />contact_number:
                <asp:TextBox ID="contact_numberTextBox" runat="server" Text='<%# Bind("contact_number") %>' />
                <br />contact_email:
                <asp:TextBox ID="contact_emailTextBox" runat="server" Text='<%# Bind("contact_email") %>' />
                <br />description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />operation field:
                <asp:TextBox ID="operation_fieldTextBox" runat="server" Text='<%# Bind("[operation field]") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                contact_number:
                <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                contact_email:
                <asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                operation field:
                <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                contact_number:
                <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                <br />
                contact_email:
                <asp:Label ID="contact_emailLabel" runat="server" Text='<%# Eval("contact_email") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                operation field:
                <asp:Label ID="operation_fieldLabel" runat="server" Text='<%# Eval("[operation field]") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <h1>Education</h1>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [education] AS Edukimi, [name] AS Emri, [degree_name] AS Dega, [city] AS Qyteti, [state] AS Shteti FROM [Education] WHERE ([id_user] = @id_user)">
            <SelectParameters>
                <asp:SessionParameter Name="id_user" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
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
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
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
                <tr style="background-color:#DCDCDC;color: #000000;">
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
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
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
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
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
       
        <h1>Languages</h1>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT language AS Gjuha, speaking AS Folura ,listening AS Degjim, writing AS Shkrim FROM Language where id_user = @id
">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
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
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
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
                <tr style="background-color:#DCDCDC;color: #000000;">
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
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Gjuha</th>
                                    <th runat="server">Folura</th>
                                    <th runat="server">Degjim</th>
                                    <th runat="server">Shkrim</th>
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
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
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
        <h1>Experiences</h1>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT start_date AS Filluar, end_date AS Perfunduar, experience_description AS Pershkrim FROM Experiences where id_user = @id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource4">
            <AlternatingItemTemplate>
                <span style="">Filluar:
                <asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
                <br />
                Perfunduar:
                <asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Filluar:
                <asp:TextBox ID="FilluarTextBox" runat="server" Text='<%# Bind("Filluar") %>' />
                <br />
                Perfunduar:
                <asp:TextBox ID="PerfunduarTextBox" runat="server" Text='<%# Bind("Perfunduar") %>' />
                <br />
                Pershkrim:
                <asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
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
                <span style="">Filluar:
                <asp:TextBox ID="FilluarTextBox" runat="server" Text='<%# Bind("Filluar") %>' />
                <br />
                Perfunduar:
                <asp:TextBox ID="PerfunduarTextBox" runat="server" Text='<%# Bind("Perfunduar") %>' />
                <br />
                Pershkrim:
                <asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">Filluar:
                <asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
                <br />
                Perfunduar:
                <asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">Filluar:
                <asp:Label ID="FilluarLabel" runat="server" Text='<%# Eval("Filluar") %>' />
                <br />
                Perfunduar:
                <asp:Label ID="PerfunduarLabel" runat="server" Text='<%# Eval("Perfunduar") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <h1>Computer Skills</h1>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT computerSkills AS &quot;Aftesi Kompjuterike&quot; FROM ComputerSkills  where id_user = @id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource5">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="Aftesi_KompjuterikeTextBox" runat="server" Text='<%# Bind("[Aftesi Kompjuterike]") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Aftesi_KompjuterikeTextBox" runat="server" Text='<%# Bind("[Aftesi Kompjuterike]") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Aftesi Kompjuterike</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_KompjuterikeLabel" runat="server" Text='<%# Eval("[Aftesi Kompjuterike]") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

        <h1>Other Skills</h1>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT skill_description AS 
&quot;Aftesi te tjera&quot; FROM Skills where id_user = @id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource6">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="Aftesi_te_tjeraTextBox" runat="server" Text='<%# Bind("[Aftesi te tjera]") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Aftesi_te_tjeraTextBox" runat="server" Text='<%# Bind("[Aftesi te tjera]") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Aftesi te tjera</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Aftesi_te_tjeraLabel" runat="server" Text='<%# Eval("[Aftesi te tjera]") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

       

    </form>

</body>
</html>
