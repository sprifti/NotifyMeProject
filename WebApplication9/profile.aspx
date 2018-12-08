
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication9.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button2" runat="server" Text="Kryefaqja" OnClick="Button2_Click" />
        <asp:Button ID="Button1" runat="server" Text="Njoftimet e tua" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Emri: "></asp:Label>
        <asp:Label ID="emri" runat="server" Text=""></asp:Label><br />

    <div>
      
        <asp:Label ID="Label2" runat="server" Text="Fusha e operimit"></asp:Label><br />
          <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:listItem>Computer Science</asp:listItem>
            <asp:listItem>Economy</asp:listItem>
            <asp:listItem>Medicine</asp:listItem>
        </asp:DropDownList><br />
            <br />
        <div>      
            <asp:Label ID="Label3" runat="server" Text="Adresa"></asp:Label><br />
            <asp:Label ID="Label15" runat="server" Text="Shteti"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label13" runat="server" Text="Qyteti"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label14" runat="server" Text="Rruga"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
        </div>  
            <br />

        <asp:Label ID="Label4" runat="server" Text="Numri i kontaktit"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label5" runat="server" Text="Email kontakti"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Text="Arsimi i mesem"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label7" runat="server" Text="Arsimi i larte"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
            <br />
    
        <asp:Label ID="Label8" runat="server" Text="Gjuhet e huaja"></asp:Label><br />  
        <asp:Table ID="Table1" runat="server" border="1">
            <asp:TableHeaderRow><asp:TableCell>Gjuha e huaj</asp:TableCell></asp:TableHeaderRow>
            
        </asp:Table>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:listItem>Anglisht</asp:listItem>
            <asp:listItem>Italisht</asp:listItem>
            <asp:listItem>Spanjisht</asp:listItem>
            <asp:listItem>Turqisht</asp:listItem>
            <asp:listItem>Gjermanisht</asp:listItem>
        </asp:DropDownList><br />
            <asp:Button ID="Button5" runat="server" Text="Shto gjuhen" OnClick="Button5_Click1" />

            <br />
        <asp:Label ID="Label9" runat="server" Text="Aftesi kompjuterike"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label10" runat="server" Text="Eksperiencat"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label11" runat="server" Text="Pershkrimi"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
           
    </div>
    </form>

</body>
</html>
