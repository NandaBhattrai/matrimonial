<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonialhome.Master" AutoEventWireup="true" CodeBehind="Partner.aspx.cs" Inherits="matrimonial_project.View.Partner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/select2/select2.css" rel="stylesheet" />
    <script src="../Content/select2/select2.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a>><span>Partner Description</span></span>
		</div>
	</div>

          
    	<!-- Search form -->
	<div class="w3ls-list">
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
									<select name="PartnerMarital[]" id="marital" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Single">Single</option>
                                        <option runat="server" value="Divorced">Divorced</option>
                                        <option runat="server" value="Widow">Widow</option>                                                                                
								  </select>
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
								 <select name="PartnerCaste[]" id="partcaste" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Brahmin">Brahmin</option>
                                        <option runat="server" value="Chetri">Chetri</option>
                                        <option runat="server" value="Newar">Newar</option>                                                                                
                                        <option runat="server" value="Magar">Magar</option>
                                        <option runat="server" value="Rai">Rai</option>
                                        <option runat="server" value="Gurung">Gurung</option>
                                        <option runat="server" value="Thakuri">Thakuri</option>
                                        <option runat="server" value="Sunar">Sunar</option>
                                        <option runat="server" value="Muslim">Muslim</option>                                                                                
                                        <option runat="server" value="Tharu">Tharu</option>
                                        <option runat="server" value="Christian">Christian</option>
                                        <option runat="server" value="Sikh">Sikh</option>
                                        <option runat="server" value="Jain">Jain</option>
								  </select>
								</div>
								<div class="clearfix"> </div>
							  </div>                           
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Education : </label>
								<div class="col-sm-7 form_radios">
								    <select name="PartnerEducation[]" id="education" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Bachelor">Bachelor</option>
                                        <option runat="server" value="Illetrate">Illetrate</option>
                                        <option runat="server" value="Intermediate">Intermediate</option>                                                                                
                                        <option runat="server" value="Master">Master</option>
                                        <option runat="server" value="phd">phd</option>
                                        <option runat="server" value="SEE">SEE</option>
                                        <option runat="server" value="Management">Management</option>
                                        <option runat="server" value="Agriculture">Agriculture</option>
                                        <option runat="server" value="Engineering">Engineering</option>                                                                                
                                        <option runat="server" value="Software Engineering">Software Engineering</option>
								  </select>
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <select name="PartnerProfession[]" id="profession" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Engineer">Engineer</option>
                                        <option runat="server" value="Teacher">Teacher</option>
                                        <option runat="server" value="Doctor">Doctor</option>                                                                                
                                        <option runat="server" value="Unemployed">Unemployed</option>
                                        <option runat="server" value="Banker">Banker</option>
                                        <option runat="server" value="Businessman">Businessman</option>                                        
								  </select>
								</div>
								<div class="clearfix"> </div>
							  </div>   
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <select name="PartnerCountry[]" id="country" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Nepal">Nepal</option>
                                        <option runat="server" value="India">India</option>
                                        <option runat="server" value="Pakistan">Pakistan</option>                                                                                                                        
								  </select>
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
                                     <select name="PartnerSkinComplexion[]" id="complexion" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Fair">Fair</option>
                                        <option runat="server" value="Light">Light</option>
                                        <option runat="server" value="Medium">Medium</option>
                                        <option runat="server" value="Brown">Brown</option>
                                        <option runat="server" value="Olive">Olive</option>
                                        <option runat="server" value="Black">Black</option>                                        
								  </select>
                                </div>
								<div class="clearfix"></div>
							</div>
                              <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Diet : </label>
								<div class="col-sm-7 form_radios">
									<select name="PartnerDiet[]" id="diet" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Vegetarian">Vegetarian</option>
                                        <option runat="server" value="Non Vegetarian">Non Vegitarian</option>                                                                                                                      
								  </select>
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
								<select name="PartnerDrink[]" id="drink" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Drinker">Drinker</option>
                                        <option runat="server" value="Non Drinker">Non Drinker</option>                                                                                                                      
								  </select>
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
								<select name="PartnerSmoke[]" id="smoke" class="form-control select2" runat="server" multiple="true">
                                        <option runat="server" value="Smoker">Smoker</option>
                                        <option runat="server" value="Non smoker">Non Smoker</option>                                                                                                                      
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
