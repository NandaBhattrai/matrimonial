<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="matrimonial_project.View.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- inner banner -->	
	<div class="w3layouts-inner-banner">
		<div class="container">
			
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->
<!-- featured profiles -->			
			<div class="w3layouts_featured-profiles">
				<div class="container">
				<!-- slider -->
				<div class="agile_featured-profiles">
					<h2>Suggested Profiles</h2>
							<ul id="flexiselDemo3">							                 	
                                    <asp:PlaceHolder runat="server" ID="test"></asp:PlaceHolder>
  							</ul>
  				</div>   
			</div>
			<!-- //slider -->				
			</div>
			<!-- flexisel-js -->	<script src="../Content/matrimonial/js/jquery.flexisel.js"></script>
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: false,
								autoPlaySpeed: 5000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:1
									},
									tablet: { 
										changePoint:768,
										visibleItems:1
									}
								}
							});
							
						});
					   </script>
			<!-- //featured profiles -->	
	<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Share Your Story</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="Story.aspx">Get Started</a>
	</div>
	<!-- //Assisted Service -->	
	
	
	<%--<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story !!!<a href="Story.aspx">Get started</a></h4>
		</div>
	</div>
	<!-- //Get started -->--%>
        <!--Partner Block-->
    <div id="Partner_Edit" class="w3ls-list" runat="server" visible="false">
		<div class="container">
		<h2>Your Partner Description</h2>
		<input runat="server"  id="Gender"/>
        <input  runat="server"  id="AgeFrom"/>
        <input  runat="server"  id="AgeTo"/>
        <input runat="server"  id="HeightFrom"/>
        <input runat="server"  id="HeightTo"/>
        <input runat="server"  id="Marital"/>
        <input  runat="server"  id="Religion"/>
        <input runat="server"  id="Caste"/>
        <input  runat="server"  id="Country"/>
        <input runat="server"  id="Education"/>
        <input runat="server"  id="Occupation"/>
        <input runat="server"  id="Complexion"/>
        <input runat="server"  id="Diet"/>
        <input runat="server"  id="Drink"/>
        <input   runat="server"  id="Smoke"/>
	</div>
	</div>
    <!--Partner Block-->
</asp:Content>
