<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="companyProfile.aspx.cs" Inherits="WebApplication9.companyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<head runat="server">
    <title></title>
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
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/companyProfile.aspx"><span class="glyphicon glyphicon-user "></span>Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
    <div>
        <h1>Information</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CompanyInfo.name AS &quot;Emri i kompanise&quot;, CompanyInfo.operation_field AS &quot;Fusha e Operimit&quot;, CompanyInfo.contact_number AS &quot;Numer kontakti&quot;, CompanyInfo.contact_email AS &quot;Email kontakti&quot;, CompanyInfo.description AS Pershkrim FROM CompanyInfo WHERE id_user = @id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">Emri i kompanise:
                <asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
                <br />
                Fusha e Operimit:
                <asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
                <br />
                Numer kontakti:
                <asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
                <br />
                Email kontakti:
                <asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Emri i kompanise:
                <asp:TextBox ID="Emri_i_kompaniseTextBox" runat="server" Text='<%# Bind("[Emri i kompanise]") %>' />
                <br />
                Fusha e Operimit:
                <asp:TextBox ID="Fusha_e_OperimitTextBox" runat="server" Text='<%# Bind("[Fusha e Operimit]") %>' />
                <br />
                Numer kontakti:
                <asp:TextBox ID="Numer_kontaktiTextBox" runat="server" Text='<%# Bind("[Numer kontakti]") %>' />
                <br />
                Email kontakti:
                <asp:TextBox ID="Email_kontaktiTextBox" runat="server" Text='<%# Bind("[Email kontakti]") %>' />
                <br />
                Pershkrim:
                <asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Emri i kompanise:
                <asp:TextBox ID="Emri_i_kompaniseTextBox" runat="server" Text='<%# Bind("[Emri i kompanise]") %>' />
                <br />Fusha e Operimit:
                <asp:TextBox ID="Fusha_e_OperimitTextBox" runat="server" Text='<%# Bind("[Fusha e Operimit]") %>' />
                <br />Numer kontakti:
                <asp:TextBox ID="Numer_kontaktiTextBox" runat="server" Text='<%# Bind("[Numer kontakti]") %>' />
                <br />Email kontakti:
                <asp:TextBox ID="Email_kontaktiTextBox" runat="server" Text='<%# Bind("[Email kontakti]") %>' />
                <br />Pershkrim:
                <asp:TextBox ID="PershkrimTextBox" runat="server" Text='<%# Bind("Pershkrim") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">Emri i kompanise:
                <asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
                <br />
                Fusha e Operimit:
                <asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
                <br />
                Numer kontakti:
                <asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
                <br />
                Email kontakti:
                <asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
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
                <span style="">Emri i kompanise:
                <asp:Label ID="Emri_i_kompaniseLabel" runat="server" Text='<%# Eval("[Emri i kompanise]") %>' />
                <br />
                Fusha e Operimit:
                <asp:Label ID="Fusha_e_OperimitLabel" runat="server" Text='<%# Eval("[Fusha e Operimit]") %>' />
                <br />
                Numer kontakti:
                <asp:Label ID="Numer_kontaktiLabel" runat="server" Text='<%# Eval("[Numer kontakti]") %>' />
                <br />
                Email kontakti:
                <asp:Label ID="Email_kontaktiLabel" runat="server" Text='<%# Eval("[Email kontakti]") %>' />
                <br />
                Pershkrim:
                <asp:Label ID="PershkrimLabel" runat="server" Text='<%# Eval("Pershkrim") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>

        <h1>Address</h1>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT State AS Shteti, Town AS Qyteti, Street AS Rruga FROM Address where id_user = @id">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <span style="">Shteti:
                <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
                <br />
                Qyteti:
                <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
                <br />
                Rruga:
                <asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Shteti:
                <asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
                <br />
                Qyteti:
                <asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
                <br />
                Rruga:
                <asp:TextBox ID="RrugaTextBox" runat="server" Text='<%# Bind("Rruga") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Shteti:
                <asp:TextBox ID="ShtetiTextBox" runat="server" Text='<%# Bind("Shteti") %>' />
                <br />Qyteti:
                <asp:TextBox ID="QytetiTextBox" runat="server" Text='<%# Bind("Qyteti") %>' />
                <br />Rruga:
                <asp:TextBox ID="RrugaTextBox" runat="server" Text='<%# Bind("Rruga") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">Shteti:
                <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
                <br />
                Qyteti:
                <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
                <br />
                Rruga:
                <asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
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
                <span style="">Shteti:
                <asp:Label ID="ShtetiLabel" runat="server" Text='<%# Eval("Shteti") %>' />
                <br />
                Qyteti:
                <asp:Label ID="QytetiLabel" runat="server" Text='<%# Eval("Qyteti") %>' />
                <br />
                Rruga:
                <asp:Label ID="RrugaLabel" runat="server" Text='<%# Eval("Rruga") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>


    </div>
    </form>
</body>
</html>
