<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="matrimonial_project.View.Search" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/matrimonial/css/ScrollIndicator.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="progress-container header">
            <div class="progress-bar" id="myBar"></div>
    </div>
    <!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="UserHome.aspx">Home</a> > <span>Search</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->    
    	<!-- Search form -->
	<div class="w3ls-list" runat="server" id="Search_block">
		<div class="container">
		<h2>Search your Match</h2>
		<div class="col-md-9 profiles-list-agileits">
		<!--Horizontal Tab-->
			<div id="parentHorizontalTab">				
				<div class="resp-tabs-container hor_1">
					<div>	
						<div class="w3_regular_search">	
                                <input runat="server" id="RegisterId" type="text" visible="false"/>
                                <asp:Label Text="" runat="server"  ID="message" />							
							   <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Looking For: </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_male" type="radio" name="gender" value="male" checked=""/> Groom &nbsp;&nbsp;
									<input runat="server" id="rad_female" type="radio" name="gender" value="female"/> Bride<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
						    <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Age in years : </label>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="RequiredFieldValidator2" ControlToValidate="AgeFrom" ErrorMessage="Required Field" />
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="RequiredFieldValidator3" ControlToValidate="AgeTo" ErrorMessage="Required Field" />
								<div class="col-sm-7 form_radios">    
                                <input type="number" id="AgeFrom" runat="server" required="required"/><span>To</span>
                                <input type="number" id="AgeTo" runat="server"  required="required"/>
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
                                 <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="HeightValidator" ControlToValidate="HeightFrom" ErrorMessage="Required Field" />
                                <asp:RegularExpressionValidator ID="TextValidator" ControlToValidate="HeightFrom" runat="server" ForeColor="Red"
                                     ErrorMessage="*No Text" Display="Dynamic" ValidationExpression="[0-9]*\.?[0-9]*"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="RequiredFieldValidator1" ControlToValidate="HeightTo" ErrorMessage="Required Field" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="HeightTo" runat="server" ForeColor="Red"
                                     ErrorMessage="*No Text" Display="Dynamic" ValidationExpression="[0-9]*\.?[0-9]*"></asp:RegularExpressionValidator>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="HeightFrom" runat="server"/><span>To</span>
                                <input type="number" id="HeightTo" runat="server"/>
                                </div>
								<div class="clearfix"></div>
							</div>				
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_single" type="radio" name="marital" value="Single" checked=""/> Single &nbsp;&nbsp;
									<input runat="server" id="rad_divorced" type="radio" name="marital" value="Divorced"/> Divorced&nbsp;&nbsp;
                                    <input runat="server" id="rad_Widow" type="radio" name="marital" value="Widow" />Widow
  								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">								      
                                     <asp:DropDownList ID="Country_list" runat="server">                                                            
                                     </asp:DropDownList>								      
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <asp:DropDownList ID="Profession" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Stay Address : </label>
								<div class="col-sm-7 form_radios">
								    <asp:DropDownList ID="Stay" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Religion : </label>
								<div class="col-sm-7 form_radios">
								  <asp:DropDownList ID="Religion" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Caste : </label>
								<div class="col-sm-7 form_radios">
								  <asp:DropDownList ID="Caste" runat="server">                                                            
                                  </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>			 
							 <asp:Button style="width:auto;" ID="ContentPlaceHolder1_Submit" runat="server" Text="Submit" OnClick="ContentPlaceHolder1_Submit_Click"/>
							  <asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel" OnClick="ContentPlaceHolder1_Cancel_Click"/>						
						</div>
					</div>					
				</div>
			</div>
		</div>
		
	<div class="clearfix"></div>
	</div>
	</div>
	<script src="js/easyResponsiveTabs.js"></script>	
	<!-- //Search form -->
	
    <!-- featured profiles -->	
    <input runat="server" id="gender" visible="false" type="text"/>		
			<div class="w3layouts_featured-profiles" style="padding-top:20px;" runat="server" visible="false" id="Result_block">
				<div class="container">
				<!-- slider -->
				<div class="agile_featured-profiles">
					<h2>Featured Profiles</h2>
							<ul id="flexiselDemo3">
								<li>
									<asp:PlaceHolder runat="server" ID="test"></asp:PlaceHolder>					
								</li>								
							</ul>
					</div>   
			</div>
			<!-- //slider -->
                			
			</div>
			<!-- flexisel-js -->	<script src="../Content/matrimonial/js/jquery.flexisel.js"></script>
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

	

<script>
// When the user scrolls the page, execute myFunction 
window.onscroll = function() {myFunction()};

function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}
</script>
</asp:Content>
