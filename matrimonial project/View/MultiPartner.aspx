<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="MultiPartner.aspx.cs" Inherits="matrimonial_project.View.MultiPartner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a>><span>Partner Description</span></span>
		</div>
	</div>

          
    	<!-- Search form -->
	<div class="w3ls-list" id="Search_block" runat="server" visible="true">
		<div class="container">
		<h2>Your Partner Description</h2>
		<div class="col-md-12 profiles-list-agileits">	
            <div id="parentHorizontalTab">	
                <div class="resp-tabs-container hor_1">  					
						<div class="w3_regular_search">
                            <div class="form_but1">
								<label class="col-sm-5 control-label1"><h3>Desired Partner Details</h3> </label>
                                <div class="clearfix"></div>
							</div>
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
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
                                    <asp:ListBox ID="partnermarital" runat="server" CssClass="form-control select2" SelectionMode="Multiple">
                                        <asp:ListItem Value="Single">Single</asp:ListItem>
                                        <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                                        <asp:ListItem Value="Widow">Widow</asp:ListItem>
                                    </asp:ListBox>
				<%--					<select name="PartnerMarital[]" id="marital" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Single">Single</option>
                                        <option runat="server" value="Divorced">Divorced</option>
                                        <option runat="server" value="Widow">Widow</option>                                                                                
								  </select>--%>
								</div>
								<div class="clearfix"> </div>
							  </div>                                             		
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Religion : </label>
								<div class="col-sm-7 form_radios">
								  <asp:DropDownList ID="Religion" CssClass="form-control" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div> 
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Caste : </label>
								<div class="col-sm-7 form_radios">
                                 
								 <asp:ListBox id="part_caste" class="form-control" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem  value="Brahmin">Brahmin</asp:ListItem>
                                        <asp:ListItem  value="Chetri">Chetri</asp:ListItem>
                                        <asp:ListItem  value="Newar">Newar</asp:ListItem>                                                                                
                                        <asp:ListItem  value="Magar">Magar</asp:ListItem>
                                        <asp:ListItem  value="Rai">Rai</asp:ListItem>
                                        <asp:ListItem  value="Gurung">Gurung</asp:ListItem>
                                        <asp:ListItem  value="Thakuri">Thakuri</asp:ListItem>
                                        <asp:ListItem  value="Sunar">Sunar</asp:ListItem>
                                        <asp:ListItem  value="Muslim">Muslim</asp:ListItem>                                                                                
                                        <asp:ListItem  value="Tharu">Tharu</asp:ListItem>
                                        <asp:ListItem  value="Christian">Christian</asp:ListItem>
                                        <asp:ListItem  value="Sikh">Sikh</asp:ListItem>
                                        <asp:ListItem  value="Jain">Jain</asp:ListItem>
								  </asp:ListBox>
								</div>
								<div class="clearfix"> </div>
							  </div>                           
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Education : </label>
								<div class="col-sm-7 form_radios">
								    <asp:ListBox  SelectionMode="Multiple" id="part_education" class="form-control" runat="server" >
                                        <asp:ListItem  value="Bachelor">Bachelor</asp:ListItem>
                                        <asp:ListItem  value="Illetrate">Illetrate</asp:ListItem>
                                        <asp:ListItem  value="Intermediate">Intermediate</asp:ListItem>                                                                                
                                        <asp:ListItem  value="Master">Master</asp:ListItem>
                                        <asp:ListItem  value="phd">phd</asp:ListItem>
                                        <asp:ListItem  value="SEE">SEE</asp:ListItem>
                                        <asp:ListItem  value="Management">Management</asp:ListItem>
                                        <asp:ListItem  value="Agriculture">Agriculture</asp:ListItem>
                                        <asp:ListItem  value="Engineering">Engineering</asp:ListItem>                                                                                
                                        <asp:ListItem  value="Software Engineering">Software Engineering</asp:ListItem>
								  </asp:ListBox>
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <asp:ListBox  SelectionMode="Multiple"  id="part_profession" class="form-control" runat="server">
                                        <asp:ListItem  value="Engineer">Engineer</asp:ListItem>
                                        <asp:ListItem  value="Teacher">Teacher</asp:ListItem>
                                        <asp:ListItem  value="Doctor">Doctor</asp:ListItem>                                                                                
                                        <asp:ListItem  value="Unemployed">Unemployed</asp:ListItem>
                                        <asp:ListItem  value="Banker">Banker</asp:ListItem>
                                        <asp:ListItem  value="Businessman">Businessman</asp:ListItem>                                        
								  </asp:ListBox>
								</div>
								<div class="clearfix"> </div>
							  </div>   
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <asp:ListBox  SelectionMode="Multiple" id="part_country" class="form-control" runat="server" multiple="true">
                                        <asp:ListItem  value="Nepal">Nepal</asp:ListItem>
                                        <asp:ListItem  value="India">India</asp:ListItem>
                                        <asp:ListItem  value="Pakistan">Pakistan</asp:ListItem>                                                                                                                        
								  </asp:ListBox>
								</div>
								<div class="clearfix"> </div>
							  </div>                           
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Age in years : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="number" id="AgeFrom" runat="server" class="form-control" required="required"/><span>To</span>
                                <input type="number" id="AgeTo" runat="server" class="form-control" required="required" />
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
                                <input id="HeightFrom" runat="server" class="form-control" /><span>To</span>
                                <input id="HeightTo" runat="server" class="form-control" />
                                </div>
								<div class="clearfix"></div>
							</div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Complexion : </label>
								<div class="col-sm-7 form_radios">     
                                     <asp:ListBox  SelectionMode="Multiple"  id="part_complexion" class="form-control" runat="server" >
                                        <asp:ListItem  value="Fair">Fair</asp:ListItem>
                                        <asp:ListItem  value="Light">Light</asp:ListItem>
                                        <asp:ListItem  value="Medium">Medium</asp:ListItem>
                                        <asp:ListItem  value="Brown">Brown</asp:ListItem>
                                        <asp:ListItem  value="Olive">Olive</asp:ListItem>
                                        <asp:ListItem  value="Black">Black</asp:ListItem>                                        
								  </asp:ListBox>
                                </div>
								<div class="clearfix"></div>
							</div>
                              <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Diet : </label>
								<div class="col-sm-7 form_radios">
									<select  id="diet" class="form-control" runat="server" >
                                        <option runat="server" value="Vegetarian">Vegetarian</option>
                                        <option runat="server" value="Non Vegetarian">Non Vegetarian</option>                                                                                                                      
                                        <option runat="server" value="">Both </option>                                                                                                                      
								  </select>
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
								<select  id="drink" class="form-control" runat="server" >
                                        <option runat="server" value="Drinker">Drinker</option>
                                        <option runat="server" value="Non Drinker">Non Drinker</option>  
                                         <option runat="server" value="">Both </option>                                                                                                                      
                                                                                                                    
								  </select>
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
								<select  id="smoke" class="form-control" runat="server" >
                                        <option runat="server" value="Smoker">Smoker</option>
                                        <option runat="server" value="Non smoker">Non Smoker</option>
                                    <option runat="server" value="">Both</option>                                                                                                                      
								  </select>	
                               </div>
								<div class="clearfix"> </div>
							  </div>                         
                              <asp:Button runat="server" ID="btn_Submit" Text="Submit" OnClick="btn_Submit_Click" />
                       </div>
					</div>
                </div>	
            </div>			
	<div class="clearfix"></div>
	</div>
	</div>

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
    <%--<script> 
    $(document).ready(function() {
        $('.js-example-basic-multiple').select2();
    }); 
    </script>--%>
<script>
// When the user scrolls the page, execute myFunction 
    window.onscroll = function () { myFunction() };
    $(document).ready(function () {
        $('.select2').select2();
    })
function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}
</script>
</asp:Content>
