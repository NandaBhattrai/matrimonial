<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="matrimonial_project.View.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="UserHome.aspx">Home</a> > <span>About Us</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	
	<!-- about us -->
	<div class="w3l_about">
		<div class="container">
			<h1 style="text-align: center; margin-bottom: 45px">About Us</h1>
			<p>CatchYourMatch is a leader when it comes to matchmaking services online.This fact is evident from our track record over the years.
               Join our friendly website and browse through the millions of profiles of different religion, state, countries and community. 
               We take immense pride in serving our valuable members and have never disappointed.CatchYourMatch logo was created in Butwal, Nepal in the year 2018.
               We began as a small service to match individuals of Nepal origin located in Butwal, and now we have become the world's leading Nepali matrimonial brand.
               Our ultimate goal for CatchYourMatch is to facilitate the making of happy relationships and strong marriages for the long term.
               Providing matchmaking service for a years and we understand the importance of selecting the best partner for your life. 
               We aim to provide a secure environment for your matchmaking journey. CatchYourMatch is a highly trusted matchmaking and matrimonial service. 
               Our members are thoroughly screened with the aid of features such as email verification, phone confirmation and photo validation. 
               CatchYourMatch is the website parents turn to when they are looking for online matrimonial services.We have a vast number of members from around the world of all ages and religions.
               So, whether you are single, divorced, or getting married for the second time, we have someone for you. We encourage you to join us with confidence.
               Your personal information is secure with us.CatchYourMatch is a registered and trademarked corporation based in the Nepal and we specialize in our brand of matchmaking and matrimonial services.
               We have a hard-working team ready to help with your matchmaking journey. Come and join us at CatchYourMatch where we make dreams into reality.</p>
		</div>
	</div>
	
	<!-- success stories -->
	<div class="w3_success-stories">
		<div class="container">
			<h4>Our Successful Stories</h4>
                <asp:PlaceHolder runat="server" ID="StoryPalace"></asp:PlaceHolder>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //Success Stories  -->
    <!-- services -->
	<div class="agileits_services">
		<div class="container">
			<h2>We are no. 1...<span>WHY?</span></h2>
			<div class="col-md-6">

			</div>
			<div class="col-md-6 w3ls_services-grids">
				<ul class="w3_servicesgrid_info">
					<li class="tick">Best Service Support</li>
					<li class="tick">Genuine Profiles</li>
					<li class="tick">Best Security</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="wthree_services-bottom">
		<p>Our company have lots of<span>customers</span>around the world!</p>
	</div>
	<!-- //services -->
	<!-- //about us -->
</asp:Content>
             
				
				
					
				
			