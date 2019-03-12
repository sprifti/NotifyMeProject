<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="WebApplication9.Application" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style type="text/css">
		.input_{
			width: 50%;
			margin-left: 26%;
		}
		body{
			background-color: #e0f7fa;
		}
	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<nav class="nav navbar-inverse navbar-fixed-top">
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
<br>
<br>
<br>
<br>
<div class="container">
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
		<h4 class="text-center">Shkruaj nje pergjigje per lajmerimin</h4>
            <h5 class="text-center">Ky email do ti degohet kompanise qe ka kryer lajmerimin! </h5>
		</div>
	</div>
	<!-- <div class="center-block"> -->
	<div class="row ">
		<div class="col-sm-12 col-md-12 col-lg-12 input_ ">
			<asp:Label ID="Label1" runat="server" Text="Email "></asp:Label>
			<asp:TextBox ID="useremail" runat="server" ReadOnly="true" class="form-control"></asp:TextBox> <br />
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12 input_ ">
			<asp:Label ID="Label4" runat="server" Text="Bcc"></asp:Label>
			<asp:TextBox ID="ouremail" runat="server" ReadOnly="true" class="form-control"></asp:TextBox><br />
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12 input_ ">
			<asp:Label ID="Label3" runat="server" Text="Subjekti"></asp:Label>
			<asp:TextBox ID="subject" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12 input_ ">
			<asp:Label ID="Label2" runat="server" Text="Mesazhi"></asp:Label><br />
			<textarea id="message" cols="40" rows="10" runat="server" class="form-control"></textarea><br />
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12 input_ ">
			<asp:Button ID="send" runat="server" Text="Dergo" OnClick="send_Click"  class="btn bg-primary"/><br />
			<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
		</div>
	</div>
</div>
</div>
</div>
</form>
</body>
</html>