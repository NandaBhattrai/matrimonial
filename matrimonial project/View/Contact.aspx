<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="matrimonial_project.View.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <span>Contact Us</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- contact section -->
	<div class="w3ls_contact_section">
		<div class="container">
			<div class="w3_C_headquarters text-center">
				<h4>Headquarters</h4>
				<div class="agileits_address">
					<div class="col-md-4 agile_address">
						<i class="fa fa-home" aria-hidden="true"></i>
						<p>28-4, 5th Cross, USA-5842123</p>
					</div>
					<div class="col-md-4 agile_address">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<p>645-555-000-456</p>
					</div>
					<div class="col-md-4 agile_address">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
						<a href="mailto:mail@matchmadeinheaven.com">mail@matchmadeinheaven.com</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="w3_locations">
				<h2>Global Offices</h2>
				<div class="resp-tabs-container hor_1">
					<div>
							<!--vertical Tabs-->

						<div id="ChildVerticalTab_1">
							<ul class="resp-tabs-list ver_1">
								<li>Office 1</li>
								<li>Office 2</li>
								
							</ul>
							<div class="resp-tabs-container ver_1">
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  5801 8th cross road, Ipsum, D015 Lorem.</li>
											<li><span>Phone</span>: 088 555 1545 25</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office name</b>
										<ul>
											<li><span>Address</span>:  8901 Nulla Pariatur, Ipsum, D05 87GR.</li>
											<li><span>Phone</span>: 548 542 121 0000</li>
											<li><span>Customercare</span>: <a href="writeus.html">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d556620.8307728033!2d-2.9834769476888003!3d54.73441396875619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x25a3b1142c791a9%3A0xc4f8a0433288257a!2sUnited+Kingdom!5e0!3m2!1sen!2sin!4v1495440798217" allowfullscreen></iframe>
									</section>
								</div>
								
								

								
								
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
			$(document).ready(function () {
			
				$('#ChildVerticalTab_1').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true,
					tabidentify: 'ver_1', // The tab groups identifier
					activetab_bg: '#fff', // background color for active tabs in this group
					inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
					active_border_color: '#c1c1c1', // border color for active tabs heads in this group
					active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
				});
		 
			});
		</script>
		</div>
	</div>
	<!-- //contact section -->
</asp:Content>
