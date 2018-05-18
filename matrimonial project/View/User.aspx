<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="matrimonial_project.View.User" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.aspx">Home</a> > <span>Profile Details</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->

<!-- Profile Details -->
	<div class="w3ls-list"  runat="server" id="Profile_Block">
		<div class="container">
		<h2> Profile Details</h2>
		<div class="col-md-12 profiles-list-agileits">
			<div class="single_w3_profile">
				<div class="col-md-6 agileits_profile_image">
					<asp:Label Text="" runat="server"  ID="UserImage"/>
				</div>
				<div class="col-md-6 w3layouts_details">
					<h4>Profile ID :<asp:Label Text="" runat="server"  ID="ProfileId"/> </h4>					
					<h4>Name :<asp:Label Text="" runat="server"  ID="UserName"/> </h4>                    
                    <h4>DateOfBirth :<asp:Label Text="" runat="server"  ID="UserDateOfBirth"/> </h4>
                    <h4>Age :<asp:Label Text="" runat="server"  ID="UserAge"/> </h4>
                    <h4>Height :<asp:Label Text="" runat="server"  ID="UserHeight"/> </h4>
                    <h4>Weight :<asp:Label Text="" runat="server"  ID="UserWeight"/> </h4>
				</div>
				<div class="clearfix"></div>
			</div>
            </div>
<div class="col-md-12 profiles-list-agileits">
    <!--Horizontal Tab-->
<div id="parentHorizontalTab">
		<ul class="resp-tabs-list hor_1">
			<li>About Me</li>
			<li>Partner Detail</li>
		</ul>
		<div class="resp-tabs-container hor_1">
			<div>	
				<div class="w3_regular_search">
	        <div class="profile_w3layouts_details">
				<div class="agileits_aboutme">
					<h4>About me</h4>
					<h5>Brief about me:</h5>
                    <div class="form_but1">
						<asp:Label Text="" runat="server"  ID="AboutMe"/>
					</div>					
					<h5>Family Details:</h5>		
					<div class="form_but1">
						<asp:Label Text="" runat="server"  ID="AboutFamily"/>
					</div>
                    <h5>Contact:</h5>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1"> Phone : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserPhone"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1"> Email : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserEmail"/>
						</div>
						<div class="clearfix"> </div>
					</div>			
					<h5>Education Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1"> Education : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserEducation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Occupation"/>
						</div>
						<div class="clearfix"> </div>
					</div>					
					<h5>Lifestyle:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Apperance : </label>
						<div class="col-sm-9 w3_details">
				            <asp:Label Text="" runat="server"  ID="Apperance"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserDiet"/>,<asp:Label Text="" runat="server"  ID="UserDrink"/>,<asp:Label Text="" runat="server"  ID="UserSmoke"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <h5>Location:</h5>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Country : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserCountry"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">State : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserState"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">District : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserDistrict"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Current Address : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserStay"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <h5>Others:</h5>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Marital : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserMarital"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Nationality : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserNationality"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserReligion"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserCaste"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Mother Tongue : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="UserMotherTongue"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Languages : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Languages"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Blood Group : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="Blood"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<div class="col-sm-9 w3_details">
							<asp:Button runat="server" ID="Edit" CssClass="btn btn-primary" Text="Edit Profile" OnClick="Edit_Click" />
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
	    </div>           
		        </div>
            </div>
                <div class="w3_regular_search">
		<div class="profile_w3layouts_details">
				 <div class="agileits_aboutme">
		            <h4> Partner Details</h4>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Looking For : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerGender"/>
						</div>
						<div class="clearfix"> </div>
					</div>	
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Age : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerAgeFrom"/> To <asp:Label Text="" runat="server"  ID="PartnerAgeTo"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Height : </label>
						<div class="col-sm-9 w3_details">
							 <asp:Label Text="" runat="server"  ID="PartnerHeightFrom"/> To <asp:Label Text="" runat="server"  ID="PartnerHeightTo"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Marital : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerMarital"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerReligion"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerCaste"/>
						</div>
						<div class="clearfix"> </div>
					</div>
            		<div class="form_but1">
						<label class="col-sm-3 control-label1">Country : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerCountry"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Education : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerEducation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerOccupation"/>
						</div>
						<div class="clearfix"> </div>
					</div>
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Appearance : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerComplexion"/>
						</div>
						<div class="clearfix"> </div>
					</div>	
                    <div class="form_but1">
						<label class="col-sm-3 control-label1">Habits : </label>
						<div class="col-sm-9 w3_details">
							<asp:Label Text="" runat="server"  ID="PartnerDiet"/>,<asp:Label Text="" runat="server"  ID="PartnerDrink"/>,<asp:Label Text="" runat="server"  ID="PartnerSmoke"/>
						</div>
						<div class="clearfix"> </div>
					</div>	
                     <div class="form_but1">
						<div class="col-sm-9 w3_details">
							<asp:Button runat="server" ID="PartnerEdit" CssClass="btn btn-primary" Text="Edit Partner" OnClick="PartnerEdit_Click" />
						</div>
						<div class="clearfix"> </div>
					</div>
		</div>
        </div>
                </div>
	<div class="clearfix"></div>
    </div>
    </div>
	</div>
</div>
</div>
	<!-- // Profile Details -->

     <!-- Profile Edit Block-->
    <div class="w3ls-list"  runat="server" id="Edit_Block" visible="false">
		<div class="container">
		<h2> Edit Profile Details</h2>            	
			   <div class="col-md-12 profiles-list-agileits"> 
                   <div class="resp-tabs-container hor_1"  style="padding-left:15px;">                          
                             <asp:Label Text="" runat="server"  ID="message" CssClass="alert" />
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
                                    <asp:Label runat="server" ID="show_image"></asp:Label>
                                      <input type="text" runat="server" id="old_image" visible="false" />
                                    <input runat="server" class="form-control" id="image_edit" type="file" />									
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
							  <asp:Button style="width:auto;"  ID="ContentPlaceHolder1_Submit" runat="server" Text="Update" OnClick="ContentPlaceHolder1_Submit_Click"/>
							  <asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel" OnClick="ContentPlaceHolder1_Cancel_Click"/>
                           </div>
                       </div>    	
       </div>
     </div>
    <!--Edit Block-->

    <!--Partner Block-->
    <div id="Partner_Edit" class="w3ls-list" runat="server" visible="false">
		<div class="container">
		<h2>Your Partner Description</h2>
		<div class="col-md-12 profiles-list-agileits">	
            <div class="resp-tabs-container hor_1" style="padding-left:15px;">				
				<div class="w3_regular_search">
                            <div class="form_but1">
								<label class="col-sm-5 control-label1"><h3>Desired Partner Details</h3> </label>
                                <div class="clearfix"></div>
							</div>
                            <input runat="server" id="RegisterId" type="text" visible="false"/>
                            <asp:Label Text="" runat="server"  ID="Label1" />
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Looking For: </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="radmale" type="radio" name="gender" value="male"/> Groom &nbsp;&nbsp;
									<input runat="server" id="radfemale" type="radio" name="gender" value="female"/> Bride<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_single" type="radio" name="marital" value="Single"/> Single &nbsp;&nbsp;
									<input runat="server" id="rad_divorced" type="radio" name="marital" value="Divorced"/> Divorced&nbsp;&nbsp;
                                    <input runat="server" id="rad_married" type="radio" name="marital" value="Married"/> Married<br />
								</div>
								<div class="clearfix"> </div>
							  </div>                                             		
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Religion : </label>
								<div class="col-sm-7 form_radios">
								  <asp:DropDownList ID="PartReligion" runat="server">                                                            
                                     </asp:DropDownList>
								</div>
								<div class="clearfix"> </div>
							  </div> 
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Caste : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="PartCaste" type="text"/>
								</div>
								<div class="clearfix"> </div>
							  </div>                         
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Education : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="PartEducation" type="text"/>
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Profession : </label>
								<div class="col-sm-7 form_radios">
								    <input type="text" id="PartOccupation" runat="server" />
								</div>
								<div class="clearfix"> </div>
							  </div>   
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="PartCountry" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>                           
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Age in years : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="number" id="PartAgeFrom" runat="server" />To
                                <input type="number" id="PartAgeTo" runat="server" />
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="PartHeightFrom" runat="server" />To
                                <input type="number" id="PartHeightTo" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Complexion : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="text" id="PartComplexion" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>
                              <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Diet : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_veg" type="radio" name="diet" value="Vegetarian"/> Vegetarian&nbsp;&nbsp;
                                    <input runat="server" id="rad_non_veg" type="radio" name="diet" value="Non Vegetarian"/> Non Vegetarian<br />
									</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Drink : </label>
								<div class="col-sm-7 form_radios">
										<input runat="server" id="rad_drinker" type="radio" name="drink" value="Drinker"/> Drinker&nbsp;&nbsp;
                                    <input runat="server" id="rad_non_drinker" type="radio" name="drink" value="Non Drinker"/> Non Drinker<br />
									</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Smoke : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" name="smoker" type="radio" id="rad_smoker" value="Smoker"/> Smoker&nbsp;&nbsp;
                                    <input runat="server" name="smoker" type="radio" id="rad_non_smoker" value="Non Smoker" /> Non Smoker<br />
                               </div>
								<div class="clearfix"> </div>
							  </div>                         
                              <asp:Button style="width:auto;" ID="ContentPlaceHolder1_PartnerSubmit" runat="server" Text="Update" OnClick="PartnerSubmit_Click"/>
							  <asp:Button ID="ContentPlaceHolder1_PartnerCancel"  runat="server" Text="Cancel" OnClick="PartnerCancel_Click"/>
                                </div>
						</div>		
		</div>	
	    <div class="clearfix"></div>
	</div>
	</div>
    <!--Partner Block-->

    <script src="../Content/matrimonial/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript">
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
