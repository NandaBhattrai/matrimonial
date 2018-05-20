<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="matrimonial_project.View.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.html">Home</a> > <span>Feedback</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	
	<!-- feedback -->
	<div class="feedback">
		<div class="container">
			<h2>Tell us what you think of us</h2>
			<p>Please feel free to post your questions, comments and suggestions. We are eager to assist you and serve you better.</p>
			<p class="text-right"><span style="color:red;font-weight: 100;">*</span>Mandatory</p>
            <asp:Label runat="server" Text="" ID="message"></asp:Label>
				<div class="col-md-6">
					<div class="agileits">
						<label><span style="color:red;font-weight: 100;">*</span>Name:</label>
						<input type="text" id="name" runat="server" placeholder="Name" required="required"/>
					</div>
					<div class="agileits">
						<label><span style="color:red;font-weight: 100;">*</span>Your Email:</label>
						<input type="email" id="email" runat="server" placeholder="Email" required="required"/>
					</div>
				</div>
				<div class="col-md-6">
					<div class="agileits">
						<label>Address:</label>
						<input type="text" id="address" placeholder="Address" runat="server" required="required"/>
					</div>
					<div class="agileits">
						<label>Username:</label>
						<input type="text" id="username" placeholder="Username" runat="server" required="required"/>
					</div>
					
					<div class="agileits">
						<label>Phone no:</label>
						<input type="tel" id="tel" placeholder="Phone no" runat="server" required="required"/>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12 w3_feedbacktextmessage">
					<label><span style="color:red;font-weight: 100;">*</span>Feedback:</label>
					<textarea name="Comments" id="feedback" runat="server"></textarea>
				</div>
				<div class="clearfix"></div>
				<div class="w3_submit">
					<asp:Button runat="server" Text="Submit" ID="Submit" OnClick="Submit_Click" />
				</div>
		</div>
	</div>
	<!-- //feedback -->
    <!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="Assisted_Services.aspx">Know More</a>
	</div>
<!-- //Assisted Service -->
</asp:Content>
