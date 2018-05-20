<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="matrimonial_project.View.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3ls-list">
		<div class="container">
		<div class="col-md-12 profiles-list-agileits">
		<!--Horizontal Tab-->
			<div id="parentHorizontalTab">
                <div class="resp-tabs-container hor_1">  
					<div>	
						<div class="w3_regular_search">
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex"><h3>Registration Details</h3> </label>                                
                                <div class="clearfix"></div>
							</div>
                             <asp:Label Text="" runat="server"  ID="message" CssClass="alert" />
                            <input type="text" id="Id" runat="server" hidden="hidden"/>
							<div class="form_but1">                            
								<label class="col-sm-5 control-label1" for="sex">Name : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="text" id="Name" runat="server" disabled="disabled"/>
                                 </div>
								<div class="clearfix"></div>
							</div>                           
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Gender : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" disabled="disabled" id="rad_male" type="radio" name="Gender" value="male" checked=""/> Male &nbsp;&nbsp;
									<input runat="server" disabled="disabled" id="rad_female" type="radio" name="Gender" value="female"/> Female<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Date Of Birth : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="date" id="DateOfBirth" runat="server" disabled="disabled"/>
                                 </div>
								<div class="clearfix"></div>
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
								<label class="col-sm-5 control-label1" for="sex">Phone Number : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Phone" type="text" disabled="disabled" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Email Address : </label>
								<div class="col-sm-7 form_radios">
								  <input runat="server" id="Email" type="email" disabled="disabled"/>
								</div>
								<div class="clearfix"> </div>
							  </div>
                             <div class="form_but1">                            
								<label class="col-sm-5 control-label1" for="sex">UserName : </label>
								<div class="col-sm-7 form_radios">    
                                <input type="text" id="User" runat="server"/>
                                 </div>
								<div class="clearfix"></div>
							</div>
                             <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Password : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Pass" type="Password" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Password : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Password1" type="Password" disabled="disabled" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Confirm Password : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Password2" type="Password" disabled="disabled" />
								</div>
								<div class="clearfix"> </div>
							  </div>
                            <span id="Check" runat="server">			
								<asp:Button style="width:auto;"  ID="ContentPlaceHolder1_Submit" runat="server" Text="Check" OnClick="ContentPlaceHolder1_Submit_Click"/>
                            </span>
                            <span id="Update" runat="server" visible="false">								
                              <asp:Button style="width:auto;"  ID="ContentPlaceHolder1_Update" runat="server" Text="Update" OnClick="ContentPlaceHolder1_Update_Click1"/>
							</span>
							<asp:Button ID="ContentPlaceHolder1_Cancel"  runat="server" Text="Cancel"/>
                       </div>
					</div>
					</div>
				</div>
		</div>		
	<div class="clearfix"></div>
	</div>
	</div>

</asp:Content>
