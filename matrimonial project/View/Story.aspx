<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Story.aspx.cs" Inherits="matrimonial_project.View.Story" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%--<asp:ScriptManager ID="adminScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel" runat="server">
            <ContentTemplate>--%>
                <!-- Short codes-page -->
	<div class="w3layouts-content" runat="server" id="Block_first">
	   <!-- shortcodes-section -->
		<section class="typography">
			<!-- shortcodes -->
			<div class="shortcodes">
				<div class="container" style="padding-top:10px;">
			         <h3 class="w3-head" style="color:white;"><b>Successful Story</b></h3>
					<div class="typrography">
					<div class="grid_3 grid_4 wow fadeInLeft animated" id="Req_Block" visible="false" runat="server" data-wow-delay=".5s">
					 <h3 class="bars">DO YOU FIND YOUR PARTNER?</h3>
						<asp:button runat="server" ID="btn_yesPartner" Text="Yes" CssClass="btn btn-info" OnClick="btn_yesPartner_Click"/>	 
					    <asp:button runat="server" ID="btn_noPartner" Text="No" CssClass="btn btn-warning" OnClick="btn_noPartner_Click" />
				    </div>
                    <div class="grid_3 grid_4 wow fadeInRight animated"  data-wow-delay=".5s" runat="server" id="NO_Block" visible="false">
                        <div class="w3layous-story text-center">
		                    <div class="container">
			                    <h4>We help you to find your Life Partner. <a href="Search.aspx">Search</a></h4>
		                    </div>
	                    </div>							
					</div>
                    <div class="grid_3 grid_4 wow fadeInRight animated" data-wow-delay=".5s" runat="server" id="Yes_Block" visible="false">
							<h3 class="bars">Start your Story!!!</h3>
                            <div class="alert alert-info alert-dismissable">
							  <button aria-hidden="true" data-dismiss="alert" class="close" type="button"> × </button>
                                <h4>After your story Successfully build your profile will be deleted from site.</h4>
						     </div>
                            <div class="container">
		                        <h4>Tell us About Your Partner</h4>
                                    <div class="alert alert-warning alert-dismissable" style="margin-right:100px;" id="msg" runat="server" visible="false">
							          <button aria-hidden="true" data-dismiss="alert" class="close" type="button"> × </button>
                                        <h4><asp:Label runat="server" Text="" ID="message"></asp:Label></h4>
							         </div>                    
			                        <div class="col-md-6">
				                        <div class="agileits">
					                        <label>Name:</label>
					                        <input type="text" id="name" runat="server" class="form-control" placeholder="Name" required="required"/>
				                        </div>
				                        <div class="agileits">
					                        <label>Email:</label>
					                        <input type="email" id="email" runat="server" class="form-control" placeholder="Email" required="required"/>
				                        </div> 
                                        <div class="agileits">
					                        <label>Wedding Date:</label>                         
                                             <input runat="server" id="WDate" type="date" required="required" />
				                        </div>                                       	
                                        </div>
			                        <div class="col-md-6">
                                        <div class="agileits">
					                        <label>UserName:</label>
					                        <input type="text" id="User" placeholder="UserName" class="form-control" runat="server" required="required"/>
				                        </div>				                        			
				                        <div class="agileits">
					                        <label>Phone no:</label>
					                        <input type="tel" id="tel" placeholder="Phone no" class="form-control" runat="server" required="required"/>
				                        </div>
                                        <div class="agileits">
					                        <label>Couple Picture:</label>                         
                                            <input runat="server" id="upload" type="file" required="required" />
				                        </div>
			                        </div>
			                        <div class="clearfix"></div>                                    
			                        <div class="col-md-12 w3_feedbacktextmessage">
				                        <label>Story:</label>
				                        <textarea required="required" name="Comments" class="form-control" id="story" runat="server"></textarea>
			                        </div>
			                        <div class="clearfix"></div>
			                        <div class="w3_submit">
                                        <asp:Button ID="Submitbtn" Text="submit" runat="server" OnClick="Submitbtn_Click" />
			                        </div>
                            </div>                            
					</div>
                </div>
			</div>
		</div>
			<!-- //shortcodes -->
		</section>
		<!-- //shortcodes-section -->
		</div>
    <!--//Short codes-page-->
                <!--Story Request-->
                <div class="w3layouts-content" id="Request_Block" runat="server" visible="false">
		            <section class="typography">
			            <!-- shortcodes -->
			            <div class="shortcodes">
				            <div class="container">
			                     <h3 class="w3-head" style="margin-top:20px;">Request for Story</h3>
					            <div class="typrography">
					            <div class="grid_3 grid_4 wow fadeInLeft animated" data-wow-delay=".5s">
					             <h3 class="bars">IS YOUR PARTNER?</h3>
                                    <div class="alert alert-info alert-dismissable" runat="server" visible="false" id="messg">
							            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"> × </button>
                                        <h4><asp:Label runat="server" ID="msge" Text=""></asp:Label></h4>">                               
						            </div>                                                                        
                                    <input id="Sid" runat="server" visible="false" type="number"/>
                                         <div class="col-md-6">
				                        <div class="agileits">
					                        <label>Name:</label>
					                        <asp:Label runat="server" ID="Pname" Text=""></asp:Label>
				                        </div>
				                        <div class="agileits">
					                        <label>Email:</label>
					                        <asp:Label runat="server" ID="Pemail" Text=""></asp:Label>
				                        </div>                                        			                        
				                        <div class="agileits">
					                        <label>Country:</label>
					                        <asp:Label runat="server" ID="Pcountry" Text=""></asp:Label>
				                        </div>			
				                        <div class="agileits">
					                        <label>Phone no:</label>
					                        <asp:Label runat="server" ID="Pphone" Text=""></asp:Label>
				                        </div>
			                        </div>
                                    <div class="col-md-6">
                                        <div class="agileits">					                        
					                        <asp:Label runat="server" ID="Pimage" Text=""></asp:Label>
				                        </div>
                                    </div>
						            <asp:button runat="server" ID="Btn_btnYes" Text="Yes" CssClass="btn btn-info" OnClick="Btn_btnYes_Click"/>	 
					                <asp:button runat="server" ID="Btn_btnNo" Text="No" CssClass="btn btn-warning" OnClick="Btn_btnNo_Click"/>
                                </div>
                                </div>
                            </div>
                        </div>
                        </section>
				    </div>
                <!--//Story Request-->               	
		
                  <!--Update Request-->
                <div class="w3layouts-content" id="Updateblock" runat="server" visible="false">
		            <section class="typography">
			            <!-- shortcodes -->
			            <div class="shortcodes">
				            <div class="container">
			                     <h3 class="w3-head">Story</h3>
					            <div class="typrography">
					            <div class="grid_3 grid_4 wow fadeInLeft animated" data-wow-delay=".5s">					            
                                    <div class="alert alert-info alert-dismissable" runat="server" visible="false" id="Div2">
							                <button aria-hidden="true" data-dismiss="alert" class="close" type="button"> × </button>
                                            <h4><asp:Label runat="server" ID="updatemsg" Text=""></asp:Label></h4>
						            </div>   
                                    <div class="login-w3ls">							
								            <label>Wedding Date : </label>
								            <input runat="server" id="weddate" class="form-control" />
                                            <label>Image:</label>
                                             <asp:Label runat="server" ID="show_image"></asp:Label>
                                                  <input type="text" runat="server" id="old_image" visible="false" />
                                                <input runat="server" class="form-control" id="image_edit" type="file" />                                                                        
								            <label>Story :</label>
                                            <textarea runat="server" id="story_edit" style="width:100%; height:300px;"></textarea>
                                        <br /><br />					 
                                        <asp:Button runat="server" ID="Savebtn" Text ="save" OnClick="Savebtn_Click" />
                                    </div>                                     
                                </div>
                                </div>
                            </div>
                        </div>
                        </section>
				    </div>
                <!--//Update Request-->  

                <div class="w3layouts-content" runat="server" id="Response_Block" visible="false" style="margin-top:50px;">
                    <section class="typography">
			            <!-- shortcodes -->
			            <div class="shortcodes">
                            <div class="container">
                                 <div class="alert alert-info alert-dismissable" style="padding-top:20px;">
							  <button aria-hidden="true" data-dismiss="alert" class="close" type="button"> × </button>                                
                                <h4><asp:Label runat="server" ID="response" Text=""></asp:Label></h4>
				                 </div>
                            </div>
                    </div>
                    </section>
                </div>
<%--            </ContentTemplate>
        </asp:UpdatePanel>--%>
</asp:Content>
