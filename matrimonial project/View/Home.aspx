<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="matrimonial_project.View.Home" Async="true"  %>
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
        .block{
            color:black;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
    <script>
        //paste this code under the head tag or in a separate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");
        });
    </script>
    <!-- Start WOWSlider.com HEAD section -->
    <script src="../Content/matrimonial/engine1/jquery.js"></script>
    <link href="../Content/matrimonial/engine1/style.css" rel="stylesheet" />

<!-- End WOWSlider.com HEAD section -->
<title>Register/Login</title>
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
<link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet"/>
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
        <div style="padding-left:100px;">
            <div class="menu">
					<div class="cd-dropdown-wrapper">						
						<div class="logo" style="margin-top:-6px;">
						<%--<h1><a class="cd-logo link link--takiri">Catch Your Match <span><i class="fa fa-heart" aria-hidden="true"></i>Made in heaven.</span></a></h1>--%>
                            <img src="../Content/matrimonial/images/logo copy.png" class="img-responsive" alt="" height="100" width="100" /> 
						</div>
			            </div> 
					</div> 	 
		</div><!-- end container -->
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
                    <li style="font-size:20px;"><asp:Label runat="server" ID="warning" Text=""></asp:Label></li>
		            <li class="active"><a href="Home.aspx">Home</a></li>
                    <li><a href="Pages.aspx">About Us</a></li>
		           <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#registerModal">Register</a></li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
         
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
</header>
<!-- /header -->

    
    <form id="form1" runat="server" novalidate="novalidate">	
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
								<span class="block">User Name:</span>
                               <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="UserFieldValidator" ValidationGroup="loggroup" ControlToValidate="user" ErrorMessage="Required Field" />
								<input id="user" runat="server" class="form-control" type="text" placeholder="Username"/><br />
								<span class="block">Password:</span>
                                   <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="PassFieldValidator" ValidationGroup="loggroup" ControlToValidate="pass" ErrorMessage="Required Field" />
								<input id="pass" runat="server" class="form-control" type="password" placeholder="Password"/>	
								<div class="w3ls-loginr"> 
									<input runat="server" type="checkbox" id="brand" name="checkbox" value=""/>
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								<div class="clearfix"> </div>
							    <asp:Button runat="server" Text="Log In" ID="login" ValidationGroup="loggroup" OnClick="login_Click"/>                                
								<div class="clearfix"> </div>												
						</div>
					  </div>
					</div>
				  </div>
				</div>
				<!-- //Modal -->
        <!-- Register Modal -->
				<div id="registerModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
				  <div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>		
						<h4 class="modal-title">Register</h4>                          
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
							<div>
              			          <div class="login-w3ls">
					                    <span class="block">Name:</span>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="masterGroup" ID="Namevalidator" ForeColor="Red" ControlToValidate="name" ErrorMessage="Required Field" />
                                             <asp:RegularExpressionValidator ID="rev_bname" runat="server"
                                                ControlToValidate="name" 
                                                ForeColor="Red" 
                                                ErrorMessage="Invalid name!"  
                                                ValidationExpression="^[a-zA-Z'.\s]{2,50}">
                                         </asp:RegularExpressionValidator>					                    
					                    <input id="name" class="form-control" runat="server" type="text" placeholder="Enter Name"/> <br />  
                                    </div>
                                    <div class="clearfix"></div>                     
                                    <div class="login-w3ls">
                                        <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="something" runat="server">
                                            <ContentTemplate>
                                                <span class="block">UserName:</span>
                                        <asp:TextBox AutoPostBack="true" OnTextChanged="Username_change_TextChanged" CssClass="form-control"  ID="Username_change" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="UserNameValidator" ValidationGroup="masterGroup" ControlToValidate="Username_change" ErrorMessage="Required Field" />
                                        <asp:RegularExpressionValidator ID="SpaceValidator" runat="server" ControlToValidate="Username_change" ValidationGroup="masterGroup"
                                            ErrorMessage="Space are not allowed!" ValidationExpression="[^\s]+" />
					                    <asp:Label ID="usermessage" runat="server" Visible="false"> User name already used</asp:Label>                                            
                                                </ContentTemplate>
                                        </asp:UpdatePanel>
					                </div>
				                    <div class="w3_modal_body_grid">
					                    <span class="block">Gender:</span>
					                    <div class="w3_gender">
						                    <div class="colr ert">
							                    <label class="radio"><input runat="server" class="form-control" id="rad_male" type="radio" name="radio" checked=""/><i></i>Male</label>
						                    </div>
						                    <div class="colr">
							                    <label class="radio"><input runat="server" class="form-control" id="rad_female" type="radio" name="radio"/><i></i>Female</label><br />
						                    </div>
						                    <div class="clearfix"> </div>
					                    </div>
					                    <div class="clearfix"> </div>
				                    </div>
                                    <div class="clearfix"></div>
				                    <div class="login-w3ls">
					                    <span class="block">Date Of Birth:</span>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="masterGroup" ForeColor="Red" ID="RequiredFieldValidator1" ControlToValidate="datebirth" ErrorMessage="Required Field" />					                    
					                    <input runat="server" id="datebirth" class="form-control" type="date"/><br />
                                   </div>
                                    <div class="clearfix"></div>
				                    <div class="login-w3ls">
					                    <span class="block">religion:</span>
  					                         <asp:DropDownList ID="religion" class="form-control" runat="server">                                                            
                                             </asp:DropDownList><br />
				                    </div>
                                    <div class="clearfix"></div>
				                    <div class="login-w3ls">
				                    <span class="block">Mobile No: </span>
                                        <asp:RequiredFieldValidator runat="server" ValidationGroup="masterGroup" ForeColor="Red" ID="Phonevalidator" ControlToValidate="phone" ErrorMessage="Required Field" />
                                        <asp:RegularExpressionValidator ID="rev_phone" ForeColor="Red" runat="server" ControlToValidate="phone" 
                                            SetFocusOnError="true"  
                                            ErrorMessage="Invalid Phone Number" ValidationExpression="[0-9]{10}">
                                        </asp:RegularExpressionValidator>				                   
				                    <!-- country codes (ISO 3166) and Dial codes. -->
					                    <input runat="server" id="phone" class="form-control" type="tel"/><br /> <br />                                     
				                      <!-- Load jQuery from CDN so can run demo immediately -->
				                      <script src="../content/matrimonial/js/intlTelInput.js"></script>
				                      <script>
				                          $("#phone").intlTelInput({
					                       //allowDropdown: false,
					                       //autoHideDialCode: false,
					                       //autoPlaceholder: "off",
					                       //dropdownContainer: "body",
					                       //excludeCountries: ["us"],
					                       //formatOnDisplay: false,
					                       //geoIpLookup: function(callback) {
					                       //  $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
					                       //    var countryCode = (resp && resp.country) ? resp.country : "";
					                       //    callback(countryCode);
					                       //  });
					                       //},
					                       //initialCountry: "auto",
					                       //nationalMode: false,
					                       //onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
					                       //placeholderNumberType: "MOBILE",
					                       //preferredCountries: ['cn', 'jp'],
					                       //separateDialCode: true,
					                      utilsScript:"../Content/matrimonial/js/utils.js"
					                    });
				                      </script>
				                    </div>
                                    <div class="clearfix"></div>
				                    <div class="login-w3ls">
					                    <span class="block">Email:</span>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="masterGroup" ForeColor="Red" ID="Emailvalidator" ControlToValidate="mailblock" ErrorMessage="Required Field" />
                                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="mailblock" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>                                     
                                        <%--<asp:Label ID="emailmessage" runat="server" Visible="false"> Email Address already Used</asp:Label>
                                        <asp:TextBox AutoPostBack="true" OnTextChanged="email_TextChanged" CssClass="form-control"  ID="email" runat="server"></asp:TextBox>--%>                                        
                                        <input id="mailblock" runat="server" type="email" class="form-control" placeholder="abc@xyz.com" /><br />
				                    </div>                                
                                    <div class="clearfix"></div>
				                    <div class="login-w3ls">
					                    <span class="block">Password:</span>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="masterGroup" ForeColor="Red" ID="PasswordValidator" ControlToValidate="password" ErrorMessage="Required Field" />
                                            <asp:RegularExpressionValidator ID="PasswordlengthValidator" runat="server"
                                                ControlToValidate="password" 
                                                ForeColor="Red" 
                                                ErrorMessage="Length must be greater than 6" 
                                                SetFocusOnError="true" 
                                                ValidationExpression="^.*(?=.{6,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$">
                                         </asp:RegularExpressionValidator>					                    
					                    <input id="password" runat="server" class="form-control" type="password"/><br />                                         
				                    </div>
                                    <div class="clearfix"></div>
				                    <asp:Button runat="server" Text="Register" ID="register" ValidationGroup="masterGroup" OnClick="register_Click"/>
                             </div>
					    </div>
					  </div>
					</div>
				  </div>
				</div>
				<!-- Register Modal -->
       
	    </form>
    
   <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="../Content/matrimonial/data1/images/slide1.jpg" alt="slide1" title="A happy marriage is a long conversation which always seems too short " id="wows1_0"/></li>
		<li><img src="../Content/matrimonial/data1/images/slide2.jpg" alt="slide2" title="A successful marriage requires falling in love many times, always with the same person" id="wows1_1"/></li>
		<li><img src="../Content/matrimonial/data1/images/slide3.jpg" alt="slide3" title="Grow old with me! The best is yet to be" id="wows1_2"/></li>
		<li><img src="../Content/matrimonial/data1/images/slide4.jpg" alt="slide4" title="There is no more lovely, friendly, and charming relationship, communion or company than a good marriage " id="wows1_3"/></li>
		<li><a href="http://wowslider.net"><img src="../Content/matrimonial/data1/images/slide5.jpg" alt="wow slider" title="When marrying, ask yourself this question Do you believe that you will be able to converse well with this person into your old age Everything else in marriage is transitory " id="wows1_4"/></a></li>
		<li><img src="../Content/matrimonial/data1/images/slide6.jpg" alt="slide6" title="When you realize you want to spend the rest of your life with somebody, you want the rest of your life to start as soon as possible" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="slide1"><span><img src="../Content/matrimonial/data1/tooltips/slide1.jpg" alt="slide1"/>1</span></a>
		<a href="#" title="slide2"><span><img src="../Content/matrimonial/data1/tooltips/slide2.jpg" alt="slide2"/>2</span></a>
		<a href="#" title="slide3"><span><img src="../Content/matrimonial/data1/tooltips/slide3.jpg" alt="slide3"/>3</span></a>
		<a href="#" title="slide4"><span><img src="../Content/matrimonial/data1/tooltips/slide4.jpg" alt="slide4"/>4</span></a>
		<a href="#" title="slide5"><span><img src="../Content/matrimonial/data1/tooltips/slide5.jpg" alt="slide5"/>5</span></a>
		<a href="#" title="slide6"><span><img src="../Content/matrimonial/data1/tooltips/slide6.jpg" alt="slide6"/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">bootstrap slider</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="../Content/matrimonial/engine1/wowslider.js"></script>
<script type="text/javascript" src="../Content/matrimonial/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->

<div class="clearfix"></div>
<!-- Find your soulmate -->
	<div class="w3l_find-soulmate text-center" style="padding:15px 0px 15px 0px;">
		<h3>Find Your Soulmate</h3>
			<div class="container">				
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
						<h3>Sign Up</h3>
						<p>Signup for free and Upload your profile</p>
					</div>				
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-search" aria-hidden="true"></i>
						<h3>Search</h3>
						<p>Search for your right partner</p>
					</div>			
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-users" aria-hidden="true"></i>
						<h3>Interest</h3>
						<p>Send Interest to your perfect Match</p>
					</div>	
					<div class="col-md-3 w3_soulgrid">
						<i class="fa fa-comments-o" aria-hidden="true"></i>
						<h3>Story</h3>
						<p>Share your Story with Our Customers</p>
					</div>				
				<div class="clearfix"> </div>
			</div>
	</div>
    		<!-- featured profiles -->			
			<div class="w3layouts_featured-profiles">
				<div class="container">
				<!-- slider -->
				<div class="agile_featured-profiles">
					<h2>Happy Marriages</h2>
                    <ul id="flexiselDemo3">
                        
                    <asp:PlaceHolder runat="server" ID="StoryPalace"></asp:PlaceHolder>
                       	
                    </ul>						
					</div>   
			</div>
			<!-- //slider -->				
			</div>
			<!-- flexisel-js --><script src="../Content/matrimonial/js/jquery.flexisel.js"></script>
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: true,
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
    <div class="clearfix"></div>
<!-- Assisted Service -->
	<div class="agile-assisted-service text-center">
		<h4>Assisted Service</h4>
		<p>Our Relationship Managers have helped thousands of members find their life partners.</p>
		<a href="Assisted_Services.aspx">Know More</a>
	</div>

	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story is waiting to happen!  <a class="scroll" href="#" data-toggle="modal" data-target="#registerModal">Get started</a></h4>
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
						<li><i class="fa fa-map-marker"></i> Divertol, Tilottama City Nepal.</li>
						<li><i class="fa fa-mobile"></i> 9847133318 </li>
						<li><i class="fa fa-phone"></i> 9812993483 </li>
						<li><i class="fa fa-envelope-o"></i> <a href="mailto:nandabhattarai1@gmail.com"> nandabhattarai1@gmail.com</a></li>
					</ul> 
				</div>
				<div class="col-md-8 address-right">					
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
                    <div class="col-md-4 footer-grids">
						<h3>Quick Links</h3>
						<section>
                        <ul>
							<li><a href="Pages.aspx">About Us</a></li>
							<li><a href="Pages.aspx">FAQ</a></li>	
							<li><a href="Pages.aspx">Privacy Policy</a></li>
                            <li><a href="Pages.aspx">Terms and Conditions</a></li>
                            <li><a href="Pages.aspx">Contact Us</a></li>
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
			<p>© 2018 Match. All rights reserved | Design by <a href="#"> CatchYourMatch.</a></p>
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
    <asp:Label runat="server" ID="test" />
</body>
    
</html>
