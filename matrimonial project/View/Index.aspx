<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="matrimonial_project.View.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Index.aspx">Home</a> > <span>Make your Profile</span></span>
		</div>
	</div>

    	<!-- Search form -->
	<div class="w3ls-list">
		<div class="container">
		<h2>Make Your Profile</h2>
		<div class="col-md-12 profiles-list-agileits">
		<!--Horizontal Tab-->
			<div id="parentHorizontalTab">
				<div class="resp-tabs-container hor_1">
					<div>	
						<div class="w3_regular_search">
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Profile Details</h3> </label>
                                <div class="clearfix"></div>
							</div>
							<div class="form_but1">                            
								<label class="col-sm-5 control-label1" for="sex">Name : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="text" id="Name" runat="server"/>
                                 </div>
								<div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Gender : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_male" type="radio" name="gender" value="male" checked=""/> Male &nbsp;&nbsp;
									<input runat="server" id="rad_female" type="radio" name="gender" value="female"/> Female<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Date Of Birth : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="date" id="DateOfBirth" runat="server" />
                                 </div>
								<div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<asp:CheckBoxList runat="server" ID="MaritalStatus" OnSelectedIndexChanged="MaritalStatus_SelectedIndexChanged" AutoPostBack="True">
                                        <Items>
                                            <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                            <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                            <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                                        </Items>
                                    </asp:CheckBoxList>
                                    <input type="checkbox" id="single" onchange="validate()" />Single
                                    <input type="checkbox" id="married" onchange="validate()"/>Married
                                    <input type="checkbox" id="divorce" />Divorced
								</div>
								<div class="clearfix"> </div>
							  </div> 
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Nationality : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Nationality" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>                    		
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Religion : </label>
								<div class="col-sm-7 form_radios">
								  <asp:DropDownList ID="religion" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Mother Tongue : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Mothertongue" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Education and Career</h3> </label>
                                <div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Education : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Education" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="Profession" runat="server" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Location and Contact</h3> </label>
                                <div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="country" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">State : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="State" runat="server" />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">District / City : </label>
								<div class="col-sm-7 form_radios">
								     <input runat="server" id="city" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Stay : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Stay" type="text" placeholder="Current Stay Address"/>
								</div>
								<div class="clearfix"> </div>
							 </div>							 
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Phone Number : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Phone" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Email Address : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Email" type="email" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Other Details</h3> </label>
                                <div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Age in years : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="number" id="age" runat="server" />
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="height" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Weight : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="Weight" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Complexion : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="text" id="Complexion" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>
                              <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Diet : </label>
								<div class="col-sm-7 form_radios">
									<asp:CheckBoxList runat="server" ID="Diet" OnSelectedIndexChanged="Diet_SelectedIndexChanged" AutoPostBack="True">
                                        <Items>
                                            <asp:ListItem Text="Vegetarian" Value="Vegetarian"></asp:ListItem>
                                            <asp:ListItem Text="Non Vegetarian" Value="Vegetarian"></asp:ListItem>
                                            
                                        </Items>
                                    </asp:CheckBoxList>
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
									<asp:CheckBoxList runat="server" ID="Drink" OnSelectedIndexChanged="Drink_SelectedIndexChanged" AutoPostBack="true">
                                        <Items>
                                            <asp:ListItem Text="Drinker" Value="Drinker"></asp:ListItem>
                                            <asp:ListItem Text="Non Drinker" Value="Non Drinker"></asp:ListItem>                                            
                                        </Items>
                                    </asp:CheckBoxList>
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" name="myCheckbox" type="checkbox" id="Check1" value="Smoker" onclick="selectOnlyThis(this.id)"/> Smoker
                                    <input runat="server" name="myCheckbox" type="checkbox" id="Check2" value="Non Smoker" onclick="selectOnlyThis(this.id)"/> Non Smoker
                               
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
									<asp:CheckBoxList runat="server" ID="Smoke" OnSelectedIndexChanged="Smoke_SelectedIndexChanged" AutoPostBack="true">
                                        <Items>
                                            <asp:ListItem Text="Smoker" Value="Smoker"></asp:ListItem>
                                            <asp:ListItem Text="Non Smoker" Value="Non Smoker"></asp:ListItem>                                            
                                        </Items>
                                    </asp:CheckBoxList>
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Profile Picture</h3> </label>
                                <div class="clearfix"></div>
							</div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profile : </label>
								<div class="col-sm-7 form_radios">
									<input id="image" type="file" runat="server" />									
								</div>
								<div class="clearfix"> </div>
							  </div>
							 <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Family Details</h3> </label>
                                <div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Family Members : </label>
								<div class="col-sm-7 form_radios">
								     <input runat="server" id="Family" type="number" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Father : </label>
								<div class="col-sm-7 form_radios">
                                       <input runat="server" id="FName" type="text" placeholder="Name" />
								     <input runat="server" id="FProfession" type="text" placeholder="Profession" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Mother : </label>
								<div class="col-sm-7 form_radios">
                                    <input runat="server" id="MName" type="text" placeholder="Name" />
								     <input runat="server" id="MProfession" type="text" placeholder="Profession" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Brother : </label>
								<div class="col-sm-7 form_radios">
                                    <textarea runat="server" id="Brother"></textarea>
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Sister : </label>
								<div class="col-sm-7 form_radios">
                                    <textarea runat="server" id="Sister"></textarea>
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Brief About Yourself</h3> </label>
                                <div class="clearfix"></div>
							</div>
                                <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Yourself : </label>
								<div class="col-sm-7 form_radios">
                                    <textarea runat="server" id="MySelf"></textarea>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <asp:Button style="width:auto;"  ID="ContentPlaceHolder1_Submit" runat="server" Text="Submit"  OnClick="Submit_Click"  />
							  <asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel"  OnClick="Cancel_Click" />
                                <asp:Label Text="" runat="server"  ID="message" />
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<script type="text/javascript">
		    function validate() {
		        if ($('#single').prop(':checked')) {
		            $('#married').attr('checked', false);
		            $('#divorce').attr('checked', false);
		        }
		        if ($('#married').prop(':checked')) {
		            $('#single').attr('checked', false);
		            $('#divorce').attr('checked', false);
		        }
		    }
		    
		    
		</script>
	<div class="clearfix"></div>
	</div>
	</div>
	<script src="..Content/matrimonial/js/easyResponsiveTabs.js"></script>
	<script type="..Content/matrimonial/text/javascript">
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
	
</asp:Content>
