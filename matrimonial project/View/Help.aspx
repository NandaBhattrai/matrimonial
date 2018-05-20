<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="matrimonial_project.View.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Help</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	
	<!-- Help -->
	<div class="faq main-grid-border">
		<div class="container">
			<div class="wthree-help">
				<h3>How Can We help you</h3>
			        <textarea placeholder="Your Query" name="Message" required="" runat="server"></textarea>
					<asp:Button runat="server" ID="Submit" Text="submit" OnClick="Submit_Click"/>
			        <h5>OR</h5>
				<a href="Contact.aspx">Contact Us</a>
			</div>
            </div>
        </div>
</asp:Content>
