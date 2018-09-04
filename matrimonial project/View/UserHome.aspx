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
                                    <div class="col-md-3 biseller-column">
										<a href="groom_profile.html">
											<div class="profile-image">
												<img src="../Content/matrimonial/images/p9.jpg" class="img-responsive" alt="profile image">
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
										<a href="groom_profile.html">
											<div class="profile-image">
												<img src="../Content/matrimonial/images/p10.jpg" class="img-responsive" alt="profile image">
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
	<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="Assisted_Services.aspx">Know More</a>
	</div>
	<!-- //Assisted Service -->	
	
	
	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story !!!<a href="Story.aspx">Get started</a></h4>
		</div>
	</div>
	<!-- //Get started -->
</asp:Content>
