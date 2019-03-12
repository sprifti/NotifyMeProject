<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notifications.aspx.cs" Inherits="WebApplication9.notifications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
 <asp:Button runat="server" ID="notification" Text="addNotification" OnClick="notification_Click" />
<% for(int i=0; i<4; i++){ %>
  <div class="row">
    <div class="card">Serena</div>
    
  </div><br />
<%} %>

    </form>
</body>
</html>
