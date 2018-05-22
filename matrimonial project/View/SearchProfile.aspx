<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="SearchProfile.aspx.cs" Inherits="matrimonial_project.View.SearchProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="UserHome.html">Home</a> > <a href="Search.html">Search</a> > <span>Profile Details</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->


	<!-- Profile Details -->
	<div class="w3ls-list">
		<div class="container">
		<h2>Profile Details</h2>
		<div class="col-md-9 profiles-list-agileits">
			<div class="single_w3_profile">
				<div class="agileits_profile_image">
					<asp:Label Text="" runat="server"  ID="UserImage"/>
				</div>
				<div class="w3layouts_details">
					<h4>Profile ID :<asp:Label Text="" runat="server"  ID="ProfileId"/> </h4>					
					<h4>Name :<asp:Label Text="" runat="server"  ID="UserName"/> </h4>                    
                    <a href="#" data-toggle="modal" data-target="#myModal">View Contact</a>
					<a href="#" data-toggle="modal" data-target="#myModal">Send interest</a>
					<a href="#" data-toggle="modal" data-target="#myModal">Report Profile</a>
					<a href="#" data-toggle="modal" data-target="#myModal">Block Profile</a>
				</div>
				<div class="clearfix"></div>
			</div>
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
                    <h5>Date Of Birth :</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="UserDateOfBirth"/>
					</div>
                    <h5>Age :</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="Age"/>
					</div>
                    <h5>Height :</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="UserHeight"/>
					</div>
                    <h5>Weight :</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="UserWeight"/>
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
		<div class="col-md-3 w3ls-aside">
			<h3>Search by UserName:</h3>			 
				<input class="col-md-12" type="text" id="username" placeholder="Enter Username" runat="server"/>
				<input type="submit" value="Search" runat="server"/>
				<div class="clearfix"></div>
			<div class="view_profile">
        	<h3>Similar Profiles</h3>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p1.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p2.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p3.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p4.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p5.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p6.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p7.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p8.jpg" class="img-responsive" alt="">
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h6>ID : 2458741</h6>
        	   	  <p>29 Yrs, 5Ft 5in Christian
				  MBA/PGDM,
				  Rs 10 - 15 lac Mark...</p>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
       </div>
		</div>
	<div class="clearfix"></div>
	</div>
	<!-- Modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
				  <div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login to Continue</h4>
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
						<label>User Name </label>
								<input type="text" name="User Name" placeholder="Username" required="" runat="server"/>
								<label>Password</label>
								<input type="password" name="Password" placeholder="Password" required="" runat="server"/>	
								<div class="w3ls-loginr"> 
									<input type="checkbox" id="brand" name="checkbox" value="" runat="server"/>
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								<div class="clearfix"> </div>
								<input type="submit" name="submit" value="Login" runat="server"/>
								<div class="clearfix"> </div>
								<div class="social-icons">
									<ul>  
										<li><a href="www.facebook.com"><span class="icons"><i class="fa fa-facebook" aria-hidden="true"></i></span><span class="text">Facebook</span></a></li> 
										<li class="twt"><a href="www.twitter.com"><span class="icons"><i class="fa fa-twitter" aria-hidden="true"></i></span><span class="text">Twitter</span></a></li>  
									</ul> 
									<div class="clearfix"> </div>
								</div>	
				            </div>
					  </div>
					</div>

				  </div>
				</div>
				<!-- //Modal -->
	</div>
	<script src="js/easyResponsiveTabs.js"></script>
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
	<!-- //Bridegroom Profile Details -->
</asp:Content>
