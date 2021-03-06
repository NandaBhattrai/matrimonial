﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonialhome.Master" AutoEventWireup="true" CodeBehind="DesiredPart.aspx.cs" Inherits="matrimonial_project.View.DesiredPart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a>><span>Partner Description</span></span>
		</div>
	</div>
    <asp:ScriptManager ID="adminScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel" runat="server">
            <ContentTemplate>
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
									<input runat="server" id="rad_single" type="radio" name="marital" value="Single" checked=""/> Single &nbsp;&nbsp;
									<input runat="server" id="rad_divorced" type="radio" name="marital" value="Divorced"/> Divorced&nbsp;&nbsp;
                                   <input runat="server" id="rad_widow" type="radio"  name="marital" value="Widow"/>Widow
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
								 <input runat="server" id="Caste" class="form-control" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>                           
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Education : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Education" class="form-control" type="text" required="required"/>
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="Profession" class="form-control" runat="server" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>   
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Country" type="text" class="form-control" required="required" />
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
                                     <select id="SkinComplexion" class="form-control" runat="server">
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
									<input runat="server" id="rad_veg" type="radio" name="diet" value="Vegetarian" checked=""/> Vegetarian&nbsp;&nbsp;
                                    <input runat="server" id="rad_non_veg" type="radio" name="diet" value="Non Vegetarian"/> Non Vegetarian<br />
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
										<input runat="server" id="rad_drinker" type="radio" name="drink" value="Drinker" checked=""/> Drinker&nbsp;&nbsp;
                                    <input runat="server" id="rad_non_drinker" type="radio" name="drink" value="Non Drinker"/> Non Drinker<br />
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" name="smoker" type="radio" id="rad_smoker" value="Smoker" checked=""/> Smoker&nbsp;&nbsp;
                                    <input runat="server" name="smoker" type="radio" id="rad_non_smoker" value="Non Smoker" /> Non Smoker<br />
                               </div>
								<div class="clearfix"> </div>
							  </div>                         
                              <asp:Button style="width:auto;" ID="ContentPlaceHolder1_Submit" runat="server" Text="Submit" OnClick="ContentPlaceHolder1_Submit_Click"/>
							  <asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel" OnClick="ContentPlaceHolder1_Cancel_Click"/>
                       </div>
					</div>
                </div>	
            </div>			
	<div class="clearfix"></div>
	</div>
	</div>  
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
                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
