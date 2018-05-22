<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="matrimonial_project.View.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="Home.html">Home</a> > <span>Search</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
    
    	<!-- Search form -->
	<div class="w3ls-list">
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
								<div class="col-sm-7 form_radios">    
                                <input type="number" id="AgeFrom" runat="server" /><span>To</span>
                                <input type="number" id="AgeTo" runat="server" />
                                 </div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="col-sm-7 form_radios">     
                                <input type="number" id="HeightFrom" runat="server" /><span>To</span>
                                <input type="number" id="HeightTo" runat="server" />
                                </div>
								<div class="clearfix"></div>
							</div>				
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" id="rad_single" type="radio" name="marital" value="Single" checked=""/> Single &nbsp;&nbsp;
									<input runat="server" id="rad_divorced" type="radio" name="marital" value="Divorced"/> Divorced&nbsp;&nbsp;
                                    <input runat="server" id="rad_married" type="radio" name="marital" value="Married"/> Married<br />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								    <input runat="server" id="Country" type="text" />
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">District / City : </label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select>
										<option value="">District / City</option>
										<option value="">City1</option>
										<option value="">City2</option>
										<option value="">City3</option>
										<option value="">City4</option>
										<option value="">City5</option> 
										<option value="">City6</option> 
										<option value="">City7</option> 
										<option value="">City8</option> 
										<option value="">City9</option> 
										<option value="">City10</option> 
										<option value="">City11</option> 
										<option value="">City12</option> 
										<option value="">City13</option>
										<option value="">City14</option>  
										<option value="">City15</option> 
										<option value="">City16</option>
										<option value="">City17</option> 
										<option value="">City18</option>
										<option value="">City19</option>  
										<option value="">City20</option> 
										<option value="">City21</option>  
										<option value="">City22</option>
										<option value="">City23</option>  
										<option value="">City24</option> 
										<option value="">City25</option> 
									</select>
								  </div>
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">State : </label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select>
										<option value="">State1</option>
										<option value="">State2</option>
										<option value="">State3</option>
										<option value="">State4</option>
										<option value="">State5</option>
										<option value="">State6</option> 
										<option value="">State7</option> 
										<option value="">State8</option> 
										<option value="">State9</option> 
										<option value="">State10</option> 
										<option value="">State11</option> 
										<option value="">State12</option> 
										<option value="">State13</option> 
										<option value="">State14</option>
										<option value="">State15</option>  
										<option value="">State16</option> 
										<option value="">State17</option>
										<option value="">State18</option> 
										<option value="">State19</option>
										<option value="">State20</option>  
										<option value="">State21</option> 
										<option value="">State22</option>  
										<option value="">State23</option>
										<option value="">State24</option>  
										<option value="">State25</option> 
										<option value="">State26</option> 
									</select>
								  </div>
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
								<label class="col-sm-5 control-label1" for="sex">Mother Tongue : </label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select>
										<option value="">English</option>
										<option value="">French</option>
										<option value="">Telugu</option>
										<option value="">Bengali</option>
										<option value="">Bihari</option>
										<option value="">Hindi</option> 
										<option value="">Koshali</option> 
										<option value="">Khasi</option> 
										<option value="">Tamil</option> 
										<option value="">Urdu</option> 
										<option value="">Manipuri</option> 
									</select>
								  </div>
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
		<div class="col-md-3 w3ls-aside">
			<h3>Search by UserName:</h3>			
				<input class="form-control" type="text" runat="server" id="username" placeholder="Enter Username"/>
				<asp:Button runat="server" Text="Submit" ID="submit" OnClick="submit_Click"/>
				<div class="clearfix"></div>			
			<h4>Filter Profiles by</h4>
			<div class="fltr-w3ls">
				<h5>Country</h5>
				<ul>
					<li><a href="#">Country1</a></li>
					<li><a href="#">Country2</a></li>
					<li><a href="#">Country3</a></li>
					<li><a href="#">Country4</a></li>
					<li><a href="#">Country5</a></li>
					<li><a href="#">Country6</a></li>
					<li><a href="#">Country7</a></li>
					<li><a href="#">Country8</a></li>
				</ul>
			</div>
			<div class="fltr-w3ls">
				<h5>Religion</h5>
				<ul>
					<li><a href="#">Religion1</a></li>
					<li><a href="#">Religion2</a></li>
					<li><a href="#">Religion3</a></li>
					<li><a href="#">Religion4</a></li>
					<li><a href="#">Religion5</a></li>
					<li><a href="#">Religion6</a></li>
					<li><a href="#">Religion7</a></li>
				</ul>
			</div>
			<div class="fltr-w3ls">
				<h5>Profession</h5>
				<ul>
					<li><a href="#">Profession1</a></li>
					<li><a href="#">Profession2</a></li>
					<li><a href="#">Profession3</a></li>
					<li><a href="#">Profession4</a></li>
					<li><a href="#">Profession5</a></li>
					<li><a href="#">Profession6</a></li>
				</ul>
			</div>
		</div>
	<div class="clearfix"></div>
	</div>
	</div>
	<script src="js/easyResponsiveTabs.js"></script>	
	<!-- //Search form -->
	
	<!-- browse profiles -->
	<div class="w3layouts-browse text-center">
		<div class="container">
			<h3>Browse Matchmaking Profiles by</h3>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Country</h4>
				<ul>
					<li><a href="nri_list.html">Country 1</a></li>
					<li><a href="nri_list.html">Country 2</a></li>
					<li><a href="nri_list.html">Country 3</a></li>
					<li><a href="nri_list.html">Country 4</a></li>
					<li><a href="nri_list.html">Country 5</a></li>
					<li><a href="nri_list.html">Country 6</a></li>
					<li><a href="nri_list.html">Country 7</a></li>
					<li><a href="nri_list.html">Country 8</a></li>
					<li><a href="nri_list.html">Country 9</a></li>
					<li><a href="nri_list.html">Country 10</a></li>
					<li><a href="nri_list.html">Country 11</a></li>
					<li class="more"><a href="nri_list.html">more..</a></li>
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Religion</h4>
				<ul>
					<li><a href="r_list.html">Religion 1</a></li>
					<li><a href="r_list.html">Religion 2</a></li>
					<li><a href="r_list.html">Religion 3</a></li>
					<li><a href="r_list.html">Religion 4</a></li>
					<li><a href="r_list.html">Religion 5</a></li>
					<li><a href="r_list.html">Religion 6</a></li>
					<li><a href="r_list.html">Religion 7</a></li>
					<li><a href="r_list.html">Religion 8</a></li>
					<li><a href="r_list.html">Religion 9</a></li>
					<li><a href="r_list.html">Religion 10</a></li>
					<li><a href="r_list.html">Religion 11</a></li>
					<li class="more"><a href="r_list.html">more..</a></li>
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Community</h4>
				<ul>
					<li><a href="r_list.html">Community 1</a></li>
					<li><a href="r_list.html">Community 2</a></li>
					<li><a href="r_list.html">Community 3</a></li>
					<li><a href="r_list.html">Community 4</a></li>
					<li><a href="r_list.html">Community 5</a></li>
					<li><a href="r_list.html">Community 6</a></li>
					<li><a href="r_list.html">Community 7</a></li>
					<li><a href="r_list.html">Community 8</a></li>
					<li><a href="r_list.html">Community 9</a></li>
					<li class="more"><a href="r_list.html">more..</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //browse profiles -->
</asp:Content>
