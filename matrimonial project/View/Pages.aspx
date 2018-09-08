<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pages.aspx.cs" Inherits="matrimonial_project.View.Pages" %>

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
    <title>Pages</title>
</head>
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
                            <img src="../Content/matrimonial/images/logo copy.png" class="img-responsive" alt="" style="height:70px; width:80px;" />
						</div>
			            </div> 
              </div>
					</div>           
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
     
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
</header>
<!-- /header -->
    <form id="form1" runat="server">
    <div style="padding-top:30px;">
 <div class="container">
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">AboutUs</a></li>
    <li><a data-toggle="tab" href="#menu1">FAQ</a></li>
    <li><a data-toggle="tab" href="#menu2">Privacy Policy</a></li>
     <li><a data-toggle="tab" href="#menu3">Term and Condition </a></li>
    <li><a data-toggle="tab" href="#menu4">Contact</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active w3l_about">
      <h1 style="text-align: center; margin-bottom: 45px">About Us</h1>
			                            <p style="font-size:15px; font-style:italic; color:palevioletred;">CatchYourMatch is a leader when it comes to matchmaking services online.This fact is evident from our track record over the years.
               Join our friendly website and browse through the millions of profiles of different religion, state, countries and community. 
               We take immense pride in serving our valuable members and have never disappointed.CatchYourMatch logo was created in Butwal, Nepal in the year 2018.
               We began as a small service to match individuals of Nepal origin located in Butwal, and now we have become the world's leading Nepali matrimonial brand.
               Our ultimate goal for CatchYourMatch is to facilitate the making of happy relationships and strong marriages for the long term.
               Providing matchmaking service for a years and we understand the importance of selecting the best partner for your life. 
               We aim to provide a secure environment for your matchmaking journey. CatchYourMatch is a highly trusted matchmaking and matrimonial service. 
               Our members are thoroughly screened with the aid of features such as email verification, phone confirmation and photo validation. 
               CatchYourMatch is the website parents turn to when they are looking for online matrimonial services.We have a vast number of members from around the world of all ages and religions.
               So, whether you are single, divorced, or getting married for the second time, we have someone for you. We encourage you to join us with confidence.
               Your personal information is secure with us.CatchYourMatch is a registered and trademarked corporation based in the Nepal and we specialize in our brand of matchmaking and matrimonial services.
               We have a hard-working team ready to help with your matchmaking journey. Come and join us at CatchYourMatch where we make dreams into reality.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <section class="terms-of-use">
			                            <!--- tips ---->
			                            <div class="agile_tips">
				                            <div class="container">					
					                            <h1 style="text-align:center; margin-bottom:45px">Frequently Asked Questions</h1>					
						                            <!-- First Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseOne">
									                             <span></span> Can I register my Matrimonial Profile Free on CatchYourMatch.com?
								                             </h4>
							                            </div>
							                            <div id="collapseOne" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p>  </p>
								                            </div>
							                            </div>
						                            </div>						
						                            <!-- Second Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse"  data-target="#collapseTwo">
									                            <span></span> Can I register  Matrimonial Profile for my son/daughter/parent/relatives/sibling?
								                             </h4>
							                            </div>
							                            <div id="collapseTwo" class="panel-collapse collapse">
								                            <div class="panel-body">								
									                            <p></p>
                                                            </div>
							                            </div>
						                            </div>						
						                            <!-- Third Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseThree">
									                            <span></span>How do I Login?
								                             </h4>
							                            </div>
							                            <div id="collapseThree" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>
                                                            </div>
							                            </div>
						                            </div>
                                                <!-- Fourth Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFour">
									                             <span></span> I forgot my Profile ID/Password.What should Ido?
								                             </h4>
							                            </div>
							                            <div id="collapseFour" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>

								                            </div>
							                            </div>
						                            </div>
                                                <!-- Fifth Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFive">
									                             <span></span> How do I change my password?
								                             </h4>
							                            </div>
							                            <div id="collapseFive" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>
                                                                    </div>
							                            </div>
						                            </div>
                                                <!-- Sixth Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseSix">
									                             <span></span> How do I add my photograph to my Matrimonial profile?
								                             </h4>
							                            </div>
							                            <div id="collapseSix" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>
                                                                    </div>
							                            </div>
						                            </div>
                                                <!-- Seventh Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseSeven">
									                             <span></span> How do i contact member?
								                             </h4>
							                            </div>
							                            <div id="collapseSeven" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>
                                                                    </div>
							                            </div>
						                            </div>
                                                <!-- Eighth Panel -->
						                            <div class="panel panel-default">
							                            <div class="panel-heading">
								                             <h4 class="panel-title" data-toggle="collapse" data-target="#collapseEight">
									                             <span></span> How do i send my contact information to other members of interest?
								                             </h4>
							                            </div>
							                            <div id="collapseEight" class="panel-collapse collapse">
								                            <div class="panel-body">
									                            <p></p>
                                                                    </div>
							                            </div>
						                            </div>
					                          </div>
					
				                            </div>
                                    </section>
    </div>
    <div id="menu2" class="tab-pane fade">
      <section class="terms-of-use">
			                    <!--- terms ---->
			                    <div class="terms">
				                    <div class="container">                   
                                        <h1 style="text-align: center; margin-bottom: 45px">Privacy and Use of Information</h1>
                                        <h4 >Last updated on : 09-05-2018</h4>					
					                    <h6>You acknowledge that:</h6>
                                        <h6><ol start="1">
						                        <li>We cannot ensure the security or privacy of information you provide through the Internet and your email messages, and you release us from any and all liability in connection with the use of such information by other parties;</li>
						                        <li>We are not responsible for, and cannot control, the use by others of any information which you provide to them and you should use caution in selecting the personal information you provide to others through the Website.</li>
						                        <li>We cannot assume any responsibility for the content of messages sent by other users of the Website, and you release us from any and all liability  in connection with the contents of any communications you may receive from other users.</li>
                                                <li> You acknowledge that you can not sue shadi®.com or any of its employees for any damages done to you through the site. </li>
                                             </ol>                    
                                        <p>We cannot guarantee, and assume no responsibility for verifying, the accuracy of the information provided by other users of the Website.</br> You may not use the Website for any unlawful purpose.</p>
					                    </h6>
                                            <h3>Monitoring of Information.</h3>
					                        <h6><p>We reserve the right to monitor all advertisements, public postings and messages to ensure that they conform to the content guidelines, which may be applicable from time to time. We also reserve the right to monitor all messages and chats that take place through the site. We are not responsible for any offensive or obscene materials that may be transmitted or posted by other users (including unauthorized users as well as the possibility of "hackers"). We are also not responsible for the use of any personal information that the user may choose to post on the Website.</p>
					                    </h6>
                                        <h6>Removal of Information.</h6>                    
					                        <p>While we do not and cannot review every message or other material posted or sent by users of the Website, and are not responsible for any content of these messages or materials, we reserve the right, but are not obligated, to delete, move, or edit messages or materials, that we, in our sole discretion, deem to violate the Code of Conduct set out above or any applicable content guidelines, or to be otherwise unacceptable. You shall remain solely responsible for the content of advertisements, public postings, messages and other materials you may upload to the Website or users of the Website.</p>
					                    <h6>Termination of Access to Website.</h6>
					                        <p>We may, in our sole discretion, terminate or suspend your access to all or part of the Website at any time, with or without notice, for any reason, including, without limitation, breach of this Agreement. Without limiting the generality of the foregoing, any fraudulent, abusive, or otherwise illegal activity may be grounds for termination of your access to all or part of the Website at our sole discretion, and you may be referred to appropriate law enforcement agencies.</p>
				                        <h6>Online Cancellation</h6>
						                    <p>Any request for cancellation will be met with written support as fast as possible.
                                                You accept that when you cancel your membership with The Website you are automatically locked out of the site and your access is immediately terminated. You also agree and accept the complete and final loss of your profile, mail, and any other membership information that you should have. This information cannot be reclaimed or transferred to any third party. If you later change you decision you must reregister and pay for a new membership. However previous registration information will remain lost. </p>
                                        <h6>Proprietary Information</h6>
						                    <p>The Website contains information, which is proprietary to us and to our users. We assert full copyright protection in the website. Information posted by us or other users of the Website may be protected whether or not it is identified as proprietary to us or to them. You agree not to modify, copy or distribute any such information in any manner whatsoever without having first received the express permission of the owner of such information. </p>
                                        <h6>No responsibility</h6>
						                    <p>We are not responsible for any incidental, consequential, special, punitive, exemplary, direct or indirect damages of any kind whatsoever, which may arise out of or relate to your use of the Website, including but not limited to lost revenues, profits, business or data, or damages resulting from any viruses, worms, "Trojan horses" or other destructive software or materials, or communications by you or other users of the Website, or any interruption or suspension of the Website, regardless of the cause of the interruption or suspension. Any claim against us shall be limited to the amount you paid, if any, for use of the Website during the contract period less the time used. We may discontinue or change the Website or its availability to you at any time, and you may stop using the Website at any time. </p>
                                        <h6>Security</h6>
						                    <p>Your account is private and should not be used by anyone else. You are responsible for all usage or activity on the Website by users using your password, including but not limited to use of your password by any third party. </p>
                                        <h6>Other Links</h6>
						                    <p>The Website may from time to time contain links and or banners to other sites and resources ("External Links"). We are not responsible for, and have no liability as a result of, the availability of External Links or their contents </p>
                                        <h6>No Warranties</h6>
						                    <p>The Website is distributed on an "as is" basis. We do not warrant that this Website will be uninterrupted or error-free. There may be delays, omissions, and interruptions in the availability of the Website. Where permitted by law, you acknowledge that the Website is provided without any warranties of any kind whatsoever, either express or implied, including but not limited to the implied warranties of merchantability and fitness for a particular purpose. You acknowledge that use of the Website is at your own risk. We do not represent or endorse the accuracy or reliability of any advice, opinion, statement or other information displayed, uploaded or distributed through the Website by shadi®.com or any user of the Website or any other person or entity. You acknowledge that any reliance upon any such opinion, advice, statement or information shall be at your sole risk. </p>
                                         </div>
			                    </div>
		                    </section>
    </div>
      <div id="menu3" class="tab-pane fade">
          <section class="terms-of-use">
			<!--- terms ---->
			<div class="terms">
				<div class="container">
					
                    <h2>Terms and Conditions</h2>
					<h5>Please read the following User Agreement. When you sign up for any service within shadi®.com, all of which are hereinafter referred to collectively as the "Website", you agree to all of the terms and conditions of this Agreement. Please read the following terms and conditions carefully, as they form the agreement between us. IF YOU DO NOT AGREE TO THESE TERMS AND CONDITIONS, YOU MAY NOT USE THE WEBSITE, AND SHOULD NOT PROCEED TO REGISTER. BY USING THE WEBSITE YOU ARE AGREEING TO BE BOUND BY THIS USER AGREEMENT, INCLUDING ALL AMENDMENTS MADE TO DATE.</h5>
					<h6>User Agreement</h6>
					    <p>This Agreement constitutes your agreement with shadi®.com("shadi®.com") with respect to your use of the Website. You must agree to abide by all of the terms and conditions contained in this Agreement in order to become or remain an authorized user of the Website. As used in this Agreement, "we" and "us" means shadi®.com, or any successor or assignee of shadi®.com .</p>
					<h6>Website Agreement</h6>
                    <h6>Right to Use:</h6>
					    <p>You represent, warrant and covenant that you are at least 18 years old. This Website is addressed to adults only. By using the Website you agree that you are 18 years of age and older. Failure to comply with this Agreement may result in legal actions.</p>
					<h6>Adult:</h6>
					    <p>You represent, warrant and covenant that you are at least 18 years old. This Website is addressed to adults only. By using the Website you agree that you are 18 years of age and older. Failure to comply with this Agreement may result in legal actions.</p>
				    <h6>Code of Conduct:</h6>
						<p>You agree to use the Website in accordance with the following Code of Conduct: </p>
                            <ol start="1">
						    <li>You are solely responsible for any information that you display when using the Website or to other members. You will keep all information provided to you through the Website as private and confidential and will not give such information to anyone without the permission of the person who provided it to you</li>
						    <li>You will not use the Website to engage in any form of harassment or offensive behavior, including but not limited to the posting of communications, pictures or recordings, which contain libelous, slanderous, abusive or defamatory statements, or racist, pornographic, obscene, or offensive language</li>
						    <li> You will not forward chain letters through the Website</li>
                            <li> You will not use the Website to infringe the privacy rights, property rights, or other civil rights of any person</li>
                            <li> You will not post messages, pictures or recordings or use the Website in any way which violates, plagiarizes or infringes upon the rights of any third party, including but not limited to any copyright or trademark law, privacy or other personal or proprietary rights, or is fraudulent or otherwise unlawful or violates any law.
                                                        Your use of the Website is for your own personal use. You may not authorize others to use the Website and you may not transfer your accounts with other users.</li>
                            <li> You will not use the Website to distribute, promote or otherwise publish any material containing any solicitation for funds, advertising or solicitation for goods or websites.</li>
					        <li>You are aware that the Website may contain explicit adult oriented materials provided by consenting users.</li>
                             </ol>
                    </div>
			</div>
			<!--- /terms ---->
		</section>
          </div>
    <div id="menu4" class="tab-pane fade">
      <div class="w3ls_contact_section">		
			<div class="w3_C_headquarters text-center">
				<h4>Headquarters</h4>
				<div class="agileits_address">
					<div class="col-md-4 agile_address">
						<i class="fa fa-home" aria-hidden="true"></i>
						<p> DRIVERTOOL, BUTWAL-071-545216</p>
					</div>
					<div class="col-md-4 agile_address">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<p>9814449003</p>
					</div>
					<div class="col-md-4 agile_address">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
						<a href="#">mail@ctchyourmatch.com</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="w3_locations">
				<h2>Head Offices</h2>
				<div class="resp-tabs-container hor_1">
					<div>
						<div id="ChildVerticalTab_1">
							<ul class="resp-tabs-list ver_1">
								<li>Office</li>																
							</ul>
							<div class="resp-tabs-container ver_1">
								<div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office butwal</b>
										<ul>
											<li><span>Address</span>:  Sukhanagar,Butwal</li>
											<li><span>Phone</span>: 071-545216</li>
											<li><span>Customercare</span>: <a href="#">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7065.811109582562!2d83.4663426451608!3d27.689313781056484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3996868f5f307441%3A0xf58477f86a4d8d54!2sSukhanagar%2C+Butwal+32907!5e0!3m2!1sen!2snp!4v1527686513640"  allowfullscreen></iframe>
										
									</section>
								</div><div>
									<section class="w3_g_address">
										<h3>Contact information:</h3>
										<b>Office Drivertol</b>
										<ul>
											<li><span>Address</span>:  Drivertol.</li>
											<li><span>Phone</span>: 9814449003</li>
											<li><span>Customercare</span>: <a href="#">Click here</a> </li>
										</ul>
										<h3>Locate Us:</h3>
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d441.7801235640654!2d83.46738665334841!3d27.64801481614076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3996844cdf587883%3A0xbdf93678f0d8ce9b!2sDrivertol%2C+Tilottama+32907!5e0!3m2!1sen!2snp!4v1527686812436" allowfullscreen></iframe>										
									</section>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>		
	</div>
    </div>
  </div>
</div>



    </div>
    </form>
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
			<p>© 2018 Match. All rights reserved | Design by <a href="#">CatchYourMatch</a></p>
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
