<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="matrimonial_project.View.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a> >  <span>Profile Details</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->


	<!-- Bride Profile Details -->
	<div class="w3ls-list">
		<div class="container">
		<h2> Profile Details</h2>
		<div class="col-md-9 profiles-list-agileits">
			<div class="single_w3_profile">
				<div class="agileits_profile_image">
					<img src="../Content/matrimonial/images/profile-image-girl.jpg" alt="profile image" />
				</div>
				<div class="w3layouts_details">
					<h4>Profile ID : </h4>
					<span>Online : </span>
					<p> </p>
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
					
					<h5>Family Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Mother : </label>
						<div class="col-sm-9 w3_details">
				        
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Father : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Sister's : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Brother's : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>			
					<h5>Education Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Highest Education : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>					
					<h5>Lifestyle:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Appearance : </label>
						<div class="col-sm-9 w3_details">
				        
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Languages Known : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Blood Group : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<h5>Desired Partner:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Age : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Height : </label>
						<div class="col-sm-9 w3_details">
							 
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Marital Status : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Education : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 w3ls-aside">
			<h3>Search by Profile ID:</h3>
		
				<input class="form-control" type="text" name="profile_id" placeholder="Enter ID" required=""/>
				<asp:Button runat="server" ID="Search" Text="Search" OnClick="Search_Click" />
				<div class="clearfix"></div>
			
			<div class="view_profile">
        	<h3>Similar Profiles</h3>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="../Content/matrimonial/images/p1.jpg" class="img-responsive" alt="">
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
							<form id="signin" action="#" method="post">
								<label>User Name </label>
								<input type="text" name="User Name" placeholder="Username" required="">
								<label>Password</label>
								<input type="password" name="Password" placeholder="Password" required="">	
								<div class="w3ls-loginr"> 
									<input type="checkbox" id="brand" name="checkbox" value="">
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								<div class="clearfix"> </div>
								<input type="submit" name="submit" value="Login">
								<div class="clearfix"> </div>
								<div class="social-icons">
									<ul>  
										<li><a href="#"><span class="icons"><i class="fa fa-facebook" aria-hidden="true"></i></span><span class="text">Facebook</span></a></li> 
										<li class="twt"><a href="#"><span class="icons"><i class="fa fa-twitter" aria-hidden="true"></i></span><span class="text">Twitter</span></a></li>  
									</ul> 
									<div class="clearfix"> </div>
								</div>	
							</form>
						</div>
					  </div>
					</div>

				  </div>
				</div>
				<!-- //Modal -->
	</div>
	<!-- //Bride Profile Details -->
</asp:Content>
