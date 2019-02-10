<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPageCompany.aspx.cs" Inherits="WebApplication9.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Kryefaqja</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.row {
    margin-left:26%;
    margin-top:3%;
    width: 50%;
    padding: 0 10px;
}

/* Remove extra left and right margins, due to padding in columns */


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
 
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

    </style>
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
                        <asp:HyperLink ID="profile" runat="server" NavigateUrl ="~/Profile.aspx"><span class="glyphicon glyphicon-user "></span>Profili</asp:HyperLink>
                    </li>
                </ul> 
            </div>
        </nav>
        <div>
            <h2>Welcome</h2>
            <asp:Label ID="Label2" runat="server" Text="Titulli i punes"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="Fusha e operimit"></asp:Label><br />
            <select id="operationField" runat="server" >
                <option value="L1">L1</option>
                <option value="L2">L2</option>
                <option value="L3">L3</option>
                <option value="L4">L4</option>
                <option value="L5">L5</option>
                <option value="L6">L6</option>
            </select><br />
            <asp:Label ID="Label3" runat="server" Text="Orari i punes"></asp:Label><br />
              <select id="Select2" runat="server">
                <option value="1" selected="selected">Kohe te pjeseshme</option>
                <option value="2">Kohe te plote</option>
                <option value="3">internship</option>
            </select><br />
            <asp:Label ID="Label4" runat="server" Text="Vite eksperience"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" type="number"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Aftesite qe duhen te permbushen"></asp:Label><br />
            <textarea id="TextArea1" cols="20" rows="5"></textarea><br />
            <asp:Button ID="Button1" runat="server" Text="Shto" /><br />
            <asp:Label ID="Label6" runat="server" Text="Gjinia"></asp:Label><br />
               <select id="Select1" runat="server" >
                <option value="M">M</option>
                <option value="F">F</option>
            </select><br />
            <asp:Label ID="Label7" runat="server" Text="Arsimi qe kerkohet?"></asp:Label><br />
            <textarea id="TextArea2" cols="20" rows="5"></textarea><br />
            <asp:Label ID="Label8" runat="server" Text="Cilat jane pergjigjesite e mia ne kete pozicion?"></asp:Label><br />
            <textarea id="TextArea3" cols="20" rows="5"></textarea><br />
            <asp:Button ID="Button2" runat="server" Text="Publiko" />
        </div>
        <div class="row">
            <div class="card">
        ktu do shkruhen njoftimet
            </div>
        </div>
    </div>
    </form>
</body>
</html>
