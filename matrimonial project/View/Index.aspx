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
                                <input id="register" runat="server" type="number" Visible="false"/>
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
									<input runat="server" id="rad_male" type="radio" name="Gender" value="male" checked=""/> Male &nbsp;&nbsp;
									<input runat="server" id="rad_female" type="radio" name="Gender" value="female"/> Female<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Date Of Birth : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="date" id="DateOfBirth" runat="server"/>
                                 </div>
								<div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<label><input type="checkbox" id="Single" class="chb" runat="server" /> Single</label>
                                    <label><input type="checkbox" id="Married" class="chb" runat="server" /> Married</label>
                                    <label><input type="checkbox" id="Divorced" class="chb" runat="server" /> Divorced</label>                     
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
								  <asp:DropDownList ID="Religion" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Caste : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Caste" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Mother Tongue : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="MotherTongue" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Known Languages : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="KnownLanguage" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Blood Group : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Blood" type="text" />
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
								<label class="col-sm-5 control-label1" for="sex"><h3>Location and Contact</h3></label>
                                <div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Country" type="text" />
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
								     <input runat="server" id="City" type="text" />
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
								  <input runat="server" id="Email" type="email"/>
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
                                <input type="number" id="Age" runat="server" />
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="Height" runat="server" />
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
									<label><input type="checkbox" id="Vegetarian" class="chb2" runat="server" /> Vegetarian</label>
                                    <label><input type="checkbox" id="Non_Vegetarian" class="chb2" runat="server" /> Non Vegetarian</label>
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
									<label><input type="checkbox" id="Drinker" class="chb3" runat="server" />Drinker</label>
                                    <label><input type="checkbox" id="Non_Drinker" class="chb3" runat="server" />Non Drinker</label>
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
									<label><input type="checkbox" id="Smoker" class="chb4" runat="server" />Smoker</label>
                                    <label><input type="checkbox" id="Non_Smoker" class="chb4" runat="server" />Non Smoker</label>                            
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
									<input id="Image" type="file" runat="server" />									
								</div>
								<div class="clearfix"> </div>
							  </div>
							 <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Family Details</h3> </label>
                                <div class="clearfix"></div>
							</div>                            
                            <div class="form_but1">
								<label class="col-sm-5 control-label1">Family Description : </label>
								<div class="col-sm-7 form_radios">                                     
                                    <textarea runat="server" id="Textarea1"></textarea>
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
    <!--Checkbox-->
    <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
                                    <script type="text/javascript">
	                                    $(".chb").change(function() {
                                        $(".chb").prop('checked', false);
                                        $(this).prop('checked', true);
	                                    });

	                                    $(".chb2").change(function () {
	                                        $(".chb2").prop('checked', false);
	                                        $(this).prop('checked', true);
	                                    });

	                                    $(".chb3").change(function () {
	                                        $(".chb3").prop('checked', false);
	                                        $(this).prop('checked', true);
	                                    });

	                                    $(".chb4").change(function () {
	                                        $(".chb4").prop('checked', false);
	                                        $(this).prop('checked', true);
	                                    });
                                    </script>
    <!--Checkbox-->
	
</asp:Content>
