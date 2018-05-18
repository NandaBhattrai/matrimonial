<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="matrimonial_project.View.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- inner banner -->	
	<div class="w3layouts-inner-banner">
		<div class="container">
			<div class="logo">
				<h1><a class="cd-logo link link--takiri" href="index.html">Match <span><i class="fa fa-heart" aria-hidden="true"></i>Made in heaven.</span></a></h1>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->
<!-- featured profiles -->			
			<div class="w3layouts_featured-profiles">
				<div class="container">
				<!-- slider -->
				<div class="agile_featured-profiles">
					<h2>Featured Profiles</h2>
							<ul id="flexiselDemo3">
								<li>	
									<div class="col-md-3 biseller-column">
										<a href="bride_profile.html">
											<div class="profile-image">
												<img src="../Content/matrimonial/images/p12.jpg" class="img-responsive" alt="profile image"/>
												<div class="agile-overlay">
												<h4>Profile ID: 458645</h4>
													<ul>
														<li><span>Age / Height</span>: 26 / 5'0''</li>
														<li><span>Caste</span>: Ipsum</li>
														<li><span>Religion</span>: Lorem</li>
														<li><span>Profession</span>: IT Software</li>
														<li><span>Profile Created By</span>: Self</li>
														<li><span>Location</span>: Semrd, 7th c, Los</li>
													</ul>
												</div>
											</div>
										</a>
									</div>
                                    	<div class="col-md-3 biseller-column">
										<a href="bride_profile.html">
											<div class="profile-image">
												<img src="../Content/matrimonial/images/p5.jpg" class="img-responsive" alt="profile image"/>
												<div class="agile-overlay">
												<h4>Profile ID: 458645</h4>
													<ul>
														<li><span>Age / Height</span>: 26 / 5'0''</li>
														<li><span>Caste</span>: Ipsum</li>
														<li><span>Religion</span>: Lorem</li>
														<li><span>Profession</span>: IT Software</li>
														<li><span>Profile Created By</span>: Self</li>
														<li><span>Location</span>: Semrd, 7th c, Los</li>
													</ul>
												</div>
											</div>
										</a>
									</div>
							    </li>
							</ul>
					</div>   
			</div>
			<!-- //slider -->				
			</div>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script><!-- flexisel-js -->	
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
	<!-- browse profiles -->
	<div class="w3layouts-browse text-center">
		<div class="container">
			<h3>Browse Matchmaking Profiles by</h3>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Country</h4>
				<ul>
					<li><a href="nri_list.html">Country 1</a></li>
					<li><a href="nri_list.html">Country 2</a></li>
					<li><a href="nri_list.html">Country 3</a></li>
					<li><a href="nri_list.html">Country 4</a></li>
					<li><a href="nri_list.html">Country 5</a></li>	
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Religion</h4>
				<ul>
					<li><a href="r_list.html">Religion 1</a></li>
					<li><a href="r_list.html">Religion 2</a></li>
					<li><a href="r_list.html">Religion 3</a></li>
					<li><a href="r_list.html">Religion 4</a></li>
					<li><a href="r_list.html">Religion 5</a></li>
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Community</h4>
				<ul>
					<li><a href="r_list.html">Community 1</a></li>
					<li><a href="r_list.html">Community 2</a></li>
					<li><a href="r_list.html">Community 3</a></li>
					<li><a href="r_list.html">Community 4</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //browse profiles -->
	
	<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="assisted_services.html">Know More</a>
	</div>
	<!-- //Assisted Service -->
	
	<!-- Location -->
	<div class="location w3layouts">
		<div class="container">
			<div class="col-md-6 col-sm-6 w3layouts location-grids location-grids-1">
				<h3>Where We Are</h3>
				<h5>Our Branches</h5>
				<p>250+ branches across World, Largest Network of its Kind.</p>
			</div>
			<div class="col-md-6 col-sm-6 w3layouts location-grids location-grids-2">
				<a href="contact.html"><img src="../Content/matrimonial/images/location.jpg" class="img-responsive" alt="Agileits W3layouts" /></a>
			</div>
			<div class="clearfix"></div>			
		</div>
	</div>
	<!-- //Location -->
	
	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story is waiting to happen!!! Get started</h4>
		</div>
	</div>
	<!-- //Get started -->
</asp:Content>
