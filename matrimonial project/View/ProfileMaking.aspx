<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonialhome.Master" AutoEventWireup="true" CodeBehind="ProfileMaking.aspx.cs" Inherits="matrimonial_project.View.ProfileMaking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="progress-container header">
            <div class="progress-bar" id="myBar"></div>
    </div>
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a> > <span>Make your Profile</span></span>
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
                             <asp:Label Text="" runat="server"  ID="message" CssClass="alert" />
							<div class="form_but1">                            
								<label class="col-sm-5 control-label1" for="sex">Name : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="text" id="Name" runat="server" required="required"/>
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
                                <input type="date" id="DateOfBirth" runat="server" required="required"/>
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
								  <input runat="server" id="Nationality" type="text" required="required"/>
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
								  <input runat="server" id="Caste" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Mother Tongue : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="MotherTongue" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Known Languages : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="KnownLanguage" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Blood Group : </label>
								<div class="col-sm-7 form_radios">
								  <select id="BloodGroup" runat="server">
                                        <option runat="server" value="O+">O+</option>
                                        <option runat="server" value="O-">O-</option>
                                        <option runat="server" value="A+">A+</option>
                                        <option runat="server" value="A-">A-</option>
                                        <option runat="server" value="B+">B+</option>
                                        <option runat="server" value="B-">B-</option>
                                        <option runat="server" value="AB+">AB+</option>
                                        <option runat="server" value="AB-">AB-</option>
								  </select>
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
								    <input runat="server" id="Education" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="Profession" runat="server" required="required" />
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
								    <input runat="server" id="Country" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">State : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="State" runat="server" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">District / City : </label>
								<div class="col-sm-7 form_radios">
								     <input runat="server" id="City" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Stay : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Stay" type="text" placeholder="Current Stay Address" required="required"/>
								</div>
								<div class="clearfix"> </div>
							 </div>							 
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Phone Number : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Phone" type="text" required="required" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Email Address : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Email" type="email" required="required"/>
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
                                <input type="number" id="Age" runat="server" required="required" />
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="Height" runat="server" required="required" />
                                </div>
								<div class="clearfix"></div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Weight : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="Weight" runat="server" required="required" />
                                </div>
								<div class="clearfix"></div>
							</div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Complexion : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="text" id="Complexion" runat="server" required="required"/>
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
									<input id="Image" type="file" runat="server" required="required" />									
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
                                    <textarea runat="server" id="Textarea1" required="required"></textarea>
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
                                    <textarea runat="server" id="MySelf" required="required"></textarea>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <asp:Button style="width:auto;"  ID="ContentPlaceHolder1_Submit" runat="server" Text="Submit" OnClick="ContentPlaceHolder1_Submit_Click"  />
							  <asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel" OnClick="ContentPlaceHolder1_Cancel_Click" />
                               
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
