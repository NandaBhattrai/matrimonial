<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="SearchProfile.aspx.cs" Inherits="matrimonial_project.View.SearchProfile" %>
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
	
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <a href="matches.html">Matches</a> > <span>Bride Profile Details</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->


	<!--  Profile Details -->	
		<div class="w3ls-list"  runat="server" id="Profile_Block">
		<div class="container">
		<h2> Profile Details</h2>
		<div class="col-md-12 profiles-list-agileits">
			<div class="single_w3_profile">
                <asp:Label runat="server" ID="message" Text=""></asp:Label>
				<div class="col-md-6 agileits_profile_image">
                    <div class="zoom">
					<asp:Label Text="" runat="server"  ID="UserImage"/>
                     </div>
                    <div class="clearfix"></div>
				</div>
				<div class="col-md-6 w3layouts_details">
					<asp:Label Text="" runat="server"  ID="ProfileId" Visible="false"/>					
					<h4>Name :<asp:Label Text="" runat="server"  ID="UserName"/> </h4>                    
                    <h4>DateOfBirth :<asp:Label Text="" runat="server"  ID="UserDateOfBirth"/> </h4>
                    <h4>Age :<asp:Label Text="" runat="server"  ID="UserAge"/> </h4>
                    <h4>Height :<asp:Label Text="" runat="server"  ID="UserHeight"/> </h4>
                    <h4>Weight :<asp:Label Text="" runat="server"  ID="UserWeight"/> </h4>
                    <!--<a href="process.aspx?type=interest&target=<% if (Session["target"] != null) { Response.Write(Session["target"]); }   %>">View Contact</a>-->
  					<a href="process.aspx?type=interest&target=<% if (Session["target"] != null) { Response.Write(Session["target"]); }   %>">Send interest</a>
					<a href="process.aspx?type=report&target=<% if (Session["target"] != null) { Response.Write(Session["target"]); }   %>">Report Profile</a>
					<!--<a href="process.aspx?type=interest&target=<% if (Session["target"] != null) { Response.Write(Session["target"]); }   %>">Block Profile</a>-->
				</div>
				<div class="clearfix"></div>
			</div>
            </div>
<div class="col-md-12 profiles-list-agileits">
    <!--Horizontal Tab-->
<div id="parentHorizontalTab">
		<ul class="resp-tabs-list hor_1">
			<li>About Me</li>
			<li>Partner Detail</li>
		</ul>
		<div class="resp-tabs-container hor_1">
			<div>	
				<div class="w3_regular_search">
	        <div class="profile_w3layouts_details">
				<div class="agileits_aboutme">
					<h4>About me</h4>
					<h5>Brief about me:</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="AboutMe"/>
					</div>					
					<h5>Family Details:</h5>		
					<div class="form_but1">
						<asp:Label Text="" runat="server"  ID="AboutFamily"/>
					</div>                    			
					<h5>Education Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1"> Education : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserEducation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Occupation"/>
						</div>
						<div class="clearfix"> </div>
					</div>					
					<h5>Lifestyle:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Apperance : </label>
						<div class="col-sm-9 w3_details">
				            <asp:Label Text="" runat="server"  ID="Apperance"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserDiet"/>,<asp:Label Text="" runat="server"  ID="UserDrink"/>,<asp:Label Text="" runat="server"  ID="UserSmoke"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <h5>Location:</h5>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Country : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserCountry"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">State : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserState"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">District : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserDistrict"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Current Address : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserStay"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <h5>Others:</h5>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Marital : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserMarital"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Nationality : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserNationality"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserReligion"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserCaste"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Mother Tongue : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserMotherTongue"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Languages : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Languages"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Blood Group : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Blood"/>
						</div>
						<div class="clearfix"> </div>
					</div>                   
				</div>
	    </div>           
		        </div>
            </div>
                <div class="w3_regular_search">
		<div class="profile_w3layouts_details">
				 <div class="agileits_aboutme">
		            <h4> Partner Details</h4>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Looking For : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerGender"/>
						</div>
						<div class="clearfix"> </div>
					</div>	
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Age : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerAgeFrom"/> To <asp:Label Text="" runat="server"  ID="PartnerAgeTo"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Height : </label>
						<div class="col-sm-9 w3_details">
							 <asp:Label Text="" runat="server"  ID="PartnerHeightFrom"/> To <asp:Label Text="" runat="server"  ID="PartnerHeightTo"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Marital : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerMarital"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerReligion"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerCaste"/>
						</div>
						<div class="clearfix"> </div>
					</div>
            		<div class="form_but1">
						<label class="col-sm-3 control-label1">Country : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerCountry"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Education : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerEducation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerOccupation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Appearance : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerComplexion"/>
						</div>
						<div class="clearfix"> </div>
					</div>	
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerDiet"/>,<asp:Label Text="" runat="server"  ID="PartnerDrink"/>,<asp:Label Text="" runat="server"  ID="PartnerSmoke"/>
						</div>
						<div class="clearfix"> </div>
					</div>                    
		</div>
        </div>
                </div>
	<div class="clearfix"></div>
    </div>
    </div>
	</div>
</div>
</div>
	
	
	<!-- // Profile Details -->
    <script src="../Content/matrimonial/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {

			$('#parentHorizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				tabidentify: 'hor_1', // The tab groups identifier
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo');
					var $name = $('span', $info);
		
					$name.text($tab.text());
		
					$info.show();
				}
			});
	 
		});
	</script>
</asp:Content>
