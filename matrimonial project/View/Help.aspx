<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="matrimonial_project.View.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="UserHome.html">Home</a> > <span>Help</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	
	<!-- Help -->
	<div class="faq main-grid-border">
		<div class="container">
			<div class="wthree-help">
				<h3>How Can We help you</h3>
                   <div><asp:Label runat="server" ID="msg" Text=""></asp:Label></div>
			        <textarea placeholder="Your Query" id="Message" required="" runat="server"></textarea>
                    <div class="w3_submit">
					<asp:Button runat="server" ID="ContentPlaceHolder1_Submit" Text="submit" OnClick="Submit_Click"/>
                    </div>
			        <h5>OR</h5>
				<a href="Contact.aspx">Contact Us</a>
			</div>
            </div>
        </div>
</asp:Content>
