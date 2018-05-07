<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="matrimonial_project.View.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
     <style>
        /* Paste this css to your style sheet file or under head tag */
        /* This only works with JavaScript, 
        if it's not present, don't show loader */
        .no-js #loader { display: none;  }
        .js #loader { display: block; position: absolute; left: 100px; top: 0; }
        .se-pre-con {
	    position: fixed;
	    left: 0px;
	    top: 0px;
	    width: 100%;
	    height: 100%;
	    z-index: 9999;
	    background: url("../Content/matrimonial/images/Preloader_2.gif") center no-repeat #fff;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
    <script>
        //paste this code under the head tag or in a separate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>

<title>Match a Matrimonial Category Bootstrap Responsive Web Template | index :: w3layouts</title>
<link href="../content/matrimonial/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link href="../content/matrimonial/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='../Content/matrimonial/js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<link href="../Content/matrimonial/css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style --> 
<!--theme-style-->
<link href="../Content/matrimonial/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<link rel="stylesheet" type="text/css" href="../Content/matrimonial/css/easy-responsive-tabs.css " />
<!--meta data-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//meta data-->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet"/>
<!-- /online fonts -->
<!-- nav smooth scroll -->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>	
<!-- //nav smooth scroll -->			
<!-- Calendar -->
	<link rel="stylesheet" href="../Content/matrimonial/css/jquery-ui.css" />
	<script src="../Content/matrimonial/js/jquery-ui.js"></script>
		<%--<script>
		  $(function() {
			$( "#datepicker" ).datepicker();
		 });
		</script>--%>
<!-- //Calendar -->			
<link rel="stylesheet" href="../Content/matrimonial/css/intlTelInput.css"/>
</head>
<!-- //head -->
<!-- body -->
<body>
     <div class="se-pre-con"></div>
<!-- header -->
<header>
	<!--  Navigation Start -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        
                <ul class="nav navbar-nav nav_1">
		            <li class="active"><a href="Home.aspx">Home</a></li>
		            
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
</header>
<!-- /header -->

    <div class="clearfix"></div>
    <div class="w3layouts-banner" id="home">
<div class="container">
		 <div class="logo">
		            <h1><a class="cd-logo link link--takiri" href="Home.aspx">Match <span><i class="fa fa-heart" aria-hidden="true"></i>Made in heaven.</span></a></h1>
	          </div>
    <form id="form1" runat="server" novalidate="novalidate">
	<div class="agileits-register">
		<h3>Register NOW!</h3>		
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Name:</span>
					<input id="name" runat="server" type="text" name="Name" placeholder="Enter Name"/>
                    <small id="namevalidate" style="display:none;">Name is Required</small>
                     <asp:RegularExpressionValidator ID="rev_bname" runat="server"
                            ControlToValidate="Name" 
                            ForeColor="Red" 
                            ErrorMessage="Invalid name!" 
                            SetFocusOnError="true" 
                            ValidationExpression="^[a-zA-Z'.\s]{2,50}">
                     </asp:RegularExpressionValidator>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid">
					<span>Gender:</span>
					<div class="w3_gender">
						<div class="colr ert">
							<label class="radio"><input runat="server" id="rad_male" type="radio" name="radio" checked=""/><i></i>Male</label>
						</div>
						<div class="colr">
							<label class="radio"><input runat="server" id="rad_female" type="radio" name="radio"/><i></i>Female</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Date Of Birth:</span>
					<input runat="server" class="date" id="datepick" name="Text" type="date"/>
                    <small id="datevalidate" style="display:none;">Date is Required</small>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>religion:</span>
  					     <asp:DropDownList ID="religion" runat="server">                                                            
                         </asp:DropDownList>
                    <small id="religionvalidate" style="display:none;"> is Required</small>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
				<span>Mobile No:</span>
				<!-- country codes (ISO 3166) and Dial codes. -->
					<input runat="server" id="phone" type="tel"/>
                    <asp:RegularExpressionValidator ID="rev_phone" runat="server" ControlToValidate="phone" 
                        SetFocusOnError="true" 
                        ForeColor="Red" 
                        ErrorMessage="Invalid Phone Number" ValidationExpression="^[0-9]{10}">
                    </asp:RegularExpressionValidator>
                    <small id="phonevalidate" style="display:none;">Phone Number is Required</small>
				  <!-- Load jQuery from CDN so can run demo immediately -->
				  <script src="../content/matrimonial/js/intlTelInput.js"></script>
				  <script>
					$("#phone").intlTelInput({
					   allowDropdown: false,
					   autoHideDialCode: false,
					   autoPlaceholder: "off",
					   dropdownContainer: "body",
					   excludeCountries: ["us"],
					   formatOnDisplay: false,
					   geoIpLookup: function(callback) {
					     $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
					       var countryCode = (resp && resp.country) ? resp.country : "";
					       callback(countryCode);
					     });
					   },
					   initialCountry: "auto",
					   nationalMode: false,
					   onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
					   placeholderNumberType: "MOBILE",
					   preferredCountries: ['cn', 'jp'],
					   separateDialCode: true,
					  utilsScript: "js/utils.js"
					});
				  </script>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid">
					<span>Email:</span>
					<input id="email" runat="server" type="email" name="Email" placeholder="abc@xyz.com "/>
				</div>
                <div class="clearfix"></div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Password:</span>
					<input id="password" runat="server" type="password" name="Password"/>
				</div>
                <div class="clearfix"></div>
				<div class="w3-agree">
					<input runat="server" type="checkbox" id="c1" name="cc"/>
					<label class="agileits-agree">I have read & agree to the <a href="terms.html">Terms and Conditions</a></label>
				</div>
             
                <asp:Button runat="server" Text="Register" OnClientClick="return validate()" ID="register" OnClick="register_Click"/>
                <asp:Label Text="" runat="server"  ID="message" />

				<div class="clearfix"></div>
				<p class="w3ls-login">Already a member? <a href="#" data-toggle="modal" data-target="#myModal">Login</a></p>			
		</div>
		<!-- Modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
				  <div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>		
						<h4 class="modal-title">Login to Continue</h4>
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
							
								<label>User Name </label>
								<input id="user" runat="server" type="text" placeholder="Username"/>
								<label>Password</label>
								<input id="pass" runat="server" type="password" placeholder="Password"/>	
								<div class="w3ls-loginr"> 
									<input runat="server" type="checkbox" id="brand" name="checkbox" value=""/>
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								<div class="clearfix"> </div>
							    <asp:Button runat="server" Text="Log In" ID="login" OnClick="login_Click"/>
                                
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
	    </form>
</div>
</div>
    <div class="clearfix"></div>

<!-- Find your soulmate -->
	<div class="w3l_find-soulmate text-center">
		<h3>Find Your Soulmate</h3>
			<div class="container">
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
						<h3>Sign Up</h3>
						<p>Signup for free and Upload your profile</p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-search" aria-hidden="true"></i>
						<h3>Search</h3>
						<p>Search for your right partner</p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-users" aria-hidden="true"></i>
						<h3>Connect</h3>
						<p>Connect with your perfect Match</p>
					</div>
				</a>
				<a class="scroll" href="#home">
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-comments-o" aria-hidden="true"></i>
						<h3>Interact</h3>
						<p>Become a member and start Conversation</p>
					</div>
				</a>
				<div class="clearfix"> </div>
			</div>
	</div>
	<!-- //Find your soulmate --> 
   
    
    <div class="clearfix"></div>
<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="assisted_services.html">Know More</a>
	</div>
<!-- //Assisted Service -->

	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story is waiting to happen!  <a class="scroll" href="#home">Get started</a></h4>
		</div>
	</div>
	<!-- //Get started -->
	
<!-- footer -->
<footer>
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h6>Get in Touch.</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 123 San Sebastian, New York City USA.</li>
						<li><i class="fa fa-mobile"></i> 333 222 3333 </li>
						<li><i class="fa fa-phone"></i> +222 11 4444 </li>
						<li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul> 
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3>Company</h3>
						<ul>
							<li><a href="About.aspx">About Us</a></li>
							<li><a href="Feedback.aspx">Feedback</a></li>  
							<li><a href="Help.aspx">Help</a></li>  
							<li><a href="Tips.aspx">Safety Tips</a></li>
							<li><a href="Typo.aspx">Typography</a></li>
							<li><a href="Icons.aspx">Icons Page</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Quick links</h3>
						<ul>
							<li><a href="Terms.aspx">Terms of use</a></li>
							<li><a href="Privacy_Policy.aspx">Privacy Policy</a></li>
							<li><a href="Contact.aspx">Contact Us</a></li>
							<li><a href="Faq.aspx">FAQ</a></li>
						</ul> 
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Follow Us on</h3>
						<section class="social">
                        <ul>
							<li><a class="icon fb" href="www.facebook.com"><i class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="www.twitter.com"><i class="fa fa-twitter"></i></a></li>	
							<li><a class="icon gp" href="www.googleplus.com"><i class="fa fa-google-plus"></i></a></li>
						</ul>
						</section>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	<div class="copy-right"> 
		<div class="container">
			<p>© 2017 Match. All rights reserved | Design by <a href="http://w3layouts.com"> W3layouts.</a></p>
		</div>
	</div> 
</footer>
<!-- //footer -->	
<!-- menu js aim -->
	<script src="../Content/matrimonial/js/jquery.menu-aim.js"> </script>
	<script src="../Content/matrimonial/js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- for bootstrap working -->
		<script src="../Content/matrimonial/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
							
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- for smooth scrolling -->
	<script type="text/javascript" src="../Content/matrimonial/js/move-top.js"></script>
	<script type="text/javascript" src="../Content/matrimonial/js/easing.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	</script>
	<!-- //for smooth scrolling -->
    <!--validation-->
    <script>
        function validate() {
            if($('#name').val()=="")
            {
                $('#namevalidate').show();
                return false;
            }
            return true;
        }
    </script>
    <!-- validation-->
</body>


</html>
