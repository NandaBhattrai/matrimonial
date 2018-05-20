<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assisted_Services.aspx.cs" Inherits="matrimonial_project.View.Assisted_Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    <title>Assisted_Services</title>
</head>
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
  
  <!-- Assisted Services -->
	<div class="w3ls-assisted_Services">
		<div class="container">
		<div class="assisted_Services-agileits">
		<h2>Assisted Services</h2>
			<h4>Interested in Assisted Service?</h4>
			<p>Leave your details below, we'll call you back.</p>
			  <form id="form1" runat="server">
                  <asp:Label runat="server" ID="message" Text=""></asp:Label>
				<label>Name:</label>
				<input type="text" placeholder="Name" runat="server" id="name" required="required"/>
				<label>Contact No:</label>
				<input type="tel" placeholder="Phone Number" runat="server" id="tel" required="required"/>
				<label>Email:</label>
				<input type="email" placeholder="Email" runat="server" id="email" required="required"/>
				<br />
				<asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click" />
		      </form>	
		</div>
	</div>
		<div class="assisted_agile_advantages text-center">
			<div class="container">
				<h4>Assisted Advantages</h4>
				<div class="col-md-4 ser-left">
					<i class="fa fa-share-alt" aria-hidden="true"></i>
					<h5>Share your responsibility</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin  vestibulum velit.Lorem ipsum ultricies.</p>
				</div>
				<div class="col-md-4 ser-left">
					<i class="fa fa-search" aria-hidden="true"></i>
					<h5>Expert search within reach</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum Lorem ipsum velit.</p>
				</div>
				<div class="col-md-4 ser-left">
					<i class="fa fa-check" aria-hidden="true"></i>
					<h5>Shortlisted matches</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies Lorem ipsum dolor sit amet.</p>
				</div>
				<div class="col-md-5 ser-left">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<h5>Initiate communication</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit sit amet.</p>
				</div>
				<div class="col-md-6 ser-left">
					<i class="fa fa-coffee" aria-hidden="true"></i>
					<h5>Meet the prospects</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit dolor sit amet.ultricies vestibulum ipsum</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>		
	</div>	
	<!-- //Assisted Services -->
	
	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story is waiting to happen!  <a href="Home.aspx">Get started</a></h4>
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
</body>
</html>
