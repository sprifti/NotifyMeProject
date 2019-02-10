<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileToFill.aspx.cs" Inherits="WebApplication9.profileToFill" %>

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
    <form id="form1" runat="server" >
    <div>
     <h2>personal information</h2>

        <select id="operationField" runat="server" >
			<option value="1">L1</option>
			<option value="2">L2</option>
			<option value="3">L3</option>
			<option value="4">L4</option>
			<option value="5">L5</option>
			<option value="6">L6</option>
        </select>
        <asp:Label ID="Label1" runat="server" Text="contact number"></asp:Label><br />
        <asp:TextBox ID="contactNumber" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="contact email"></asp:Label><br />
        <asp:TextBox ID="contactEmail" runat="server" type="email"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="description"></asp:Label><br />
        <textarea id="description" cols="20" rows="5" runat="server"></textarea><br />
        <asp:Label ID="Label4" runat="server" Text="profile pic"></asp:Label><br />
        <asp:Label ID="infoError" runat="server" Text=""></asp:Label>

    <h2>Address</h2>
            <asp:Label ID="Label15" runat="server" Text="Rruga"></asp:Label>
            <asp:TextBox ID="street" runat="server"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" Text="Qyteti"></asp:Label>
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" Text="Shteti"></asp:Label>
            <asp:TextBox ID="state" runat="server"></asp:TextBox>

    <h2>Education</h2>
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
                <tr style="">
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
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                <tr style="">
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
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
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
        <asp:Label ID="Label5" runat="server" Text="Tipi i studimeve/ highschool or university"></asp:Label><br />
         <select id="education" runat="server" >
			<option value="Gjimnazi">Gjimnazi</option>
			<option value="Universitet">Universitet</option>
			<option value="Master">Master</option>
			<option value="Doktorature">Doktorature</option>
		</select>
        <asp:Label ID="Label6" runat="server" Text="Emri i institucionit"></asp:Label><br />
        <asp:TextBox ID="eduName" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label7" runat="server" Text="Emri i deges/ ne rast uni"></asp:Label><br />
        <asp:TextBox ID="eduDegree" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="Shteti"></asp:Label><br />
        <asp:TextBox ID="eduState" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label9" runat="server" Text="Qyteti"></asp:Label><br />
        <asp:TextBox ID="eduCity" runat="server"></asp:TextBox><br />
        <asp:Label ID="educationError" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click" />

    <h2>languages</h2>
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
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
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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

        <asp:Table ID="Table1" runat="server" style="border:dashed" >
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>
                    Language
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    Speaking
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    writing
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    listening
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <select id="language" runat="server" >
						<option value="L1">L1</option>
						<option value="L2">L2</option>
						<option value="L3">L3</option>
						<option value="L4">L4</option>
						<option value="L5">L5</option>
						<option value="L6">L6</option>
					</select>
                </asp:TableCell>
                <asp:TableCell>
                    <select id="speaking" runat="server" >
						<option value="A1">A1</option>
						<option value="A2">A2</option>
						<option value="B1">B1</option>
						<option value="B2">B2</option>
						<option value="C1">C1</option>
						<option value="C2">C2</option>
					</select>
                </asp:TableCell>
                <asp:TableCell>
                   <select id="writing" runat="server" >
						<option value="A1">A1</option>
						<option value="A2">A2</option>
						<option value="B1">B1</option>
						<option value="B2">B2</option>
						<option value="C1">C1</option>
						<option value="C2">C2</option>
					</select>
                </asp:TableCell>
                <asp:TableCell>
                   <select id="listening" runat="server">
						<option value="A1">A1</option>
						<option value="A2">A2</option>
						<option value="B1">B1</option>
						<option value="B2">B2</option>
						<option value="C1">C1</option>
						<option value="C2">C2</option>
					</select>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button1_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
       
    <h2>computer skills and other</h2>
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="computerSkillsLabel" runat="server" Text='<%# Eval("computerSkills") %>' />
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
                        <asp:TextBox ID="computerSkillsTextBox" runat="server" Text='<%# Bind("computerSkills") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Plotesoni aftesite tuaja kompjuterike</td>
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
                        <asp:TextBox ID="computerSkillsTextBox" runat="server" Text='<%# Bind("computerSkills") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">computerSkills</th>
                                    
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
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="computerSkillsLabel" runat="server" Text='<%# Eval("computerSkills") %>' />
                    </td>
                    
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    	 <asp:Label ID="Label10" runat="server" Text="Computer skills"></asp:Label><br />
    	<textarea id="cmpSkills" cols="20" rows="5" runat="server"></textarea><br /> <asp:Label ID="cmpSkillsError" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" /><br />
        <asp:Label ID="Label11" runat="server" Text="Other?"></asp:Label><br />
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="skill_descriptionLabel" runat="server" Text='<%# Eval("skill_description") %>' />
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
                        <asp:TextBox ID="skill_descriptionTextBox" runat="server" Text='<%# Bind("skill_description") %>' />
                    </td>
                 
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Aftesi te tjera?</td>
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
                        <asp:TextBox ID="skill_descriptionTextBox" runat="server" Text='<%# Bind("skill_description") %>' />
                    </td>
                    
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">skill_description</th>
                                    
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
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="skill_descriptionLabel" runat="server" Text='<%# Eval("skill_description") %>' />
                    </td>
                   
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        
        

        <textarea id="otherSkills" cols="20" rows="5" runat="server"></textarea><br />
        <asp:Label ID="otherSkillsError" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button4" runat="server" Text="Add" OnClick="Button4_Click" />

    <h2>Experiences</h2>
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                <table runat="server" style="">
                    <tr>
                        <td>Shtoni eksperiencat tuaja.</td>
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
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
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
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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

        <asp:Label ID="Label12" runat="server" Text=" experience description"></asp:Label><br />
        <textarea id="experience" cols="20" rows="2" runat="server"></textarea><br />
        <asp:Label ID="Label13" runat="server" Text="start date"></asp:Label><br />
        <asp:TextBox ID="startDate" runat="server" type="date"></asp:TextBox><br />
        <asp:Label ID="Label14" runat="server" Text="end date"  ></asp:Label><br />
        <asp:TextBox ID="endDate" runat="server" type="date"></asp:TextBox><br />
        <asp:Label ID="experiencesError" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button5" runat="server" Text="Add" OnClick="Button5_Click" /><br />

        
     <%--   <h1>Rrjetet sociale</h1>

        <asp:Label ID="Label19" runat="server" Text="Facebook"></asp:Label><br />
        <asp:TextBox ID="facebook" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label20" runat="server" Text="Twitter"></asp:Label><br />
        <asp:TextBox ID="twitter" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label21" runat="server" Text="Linkedin"></asp:Label><br />
        <asp:TextBox ID="linkedin" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label22" runat="server" Text="Instagram"></asp:Label><br />
        <asp:TextBox ID="instagram" runat="server"></asp:TextBox>--%>

        <asp:Button ID="Button1" runat="server" Text="Shto Informacion" OnClick="Button1_Click2" />
    </div>
    </form>
</body>
</html>
