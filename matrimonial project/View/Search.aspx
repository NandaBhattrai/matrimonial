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
							   <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Gender : </label>
								<div class="col-sm-7 form_radios">
									<input runat="server" type="radio" id="rad_male" value="male" checked=""/> Male &nbsp;&nbsp;
									<input runat="server" type="radio" id="rad_female" value="female"/> Female<br/>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Age in years : </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
									<select id="" onchange="change_country(this.value)" class="frm-field required">
										<option value="null">20</option><option value="null">21</option><option value="null">22</option>   
										<option value="null">23</option><option value="null">24</option><option value="null">25</option>  	
										<option value="null">26</option><option value="null">27</option><option value="null">28</option>  
										<option value="null">29</option><option value="null">30</option><option value="null">31</option>  
										<option value="null">32</option><option value="null">33</option><option value="null">34</option>  
										<option value="null">35</option><option value="null">36</option><option value="null">37</option> 
										<option value="null">38</option><option value="null">39</option><option value="null">40</option>
										<option value="null">41</option><option value="null">43</option><option value="null">44</option>
										<option value="null">45</option><option value="null">46</option><option value="null">47</option>  	
										<option value="null">48</option><option value="null">49</option><option value="null">50</option>  	
										<option value="null">51</option><option value="null">52</option><option value="null">53</option>  				
									</select>
									<span>To </span>
									<select id="" onchange="change_country(this.value)" class="frm-field required">
										<option value="null">30</option><option value="null">31</option>  
										<option value="null">32</option><option value="null">33</option><option value="null">34</option>  
										<option value="null">35</option><option value="null">36</option><option value="null">37</option> 
										<option value="null">38</option><option value="null">39</option><option value="null">40</option>
										<option value="null">41</option><option value="null">43</option><option value="null">44</option>
										<option value="null">45</option><option value="null">46</option><option value="null">47</option>  	
										<option value="null">48</option><option value="null">49</option><option value="null">50</option>  	
										<option value="null">51</option><option value="null">52</option><option value="null">53</option>  	
										<option value="null">54</option><option value="null">55</option><option value="null">56</option> 	
										<option value="null">57</option><option value="null">58</option><option value="null">59</option> 	 	
										<option value="null">60</option><option value="null">61</option><option value="null">62</option> 	
										<option value="null">63</option><option value="null">64</option><option value="null">65</option> 	 	
										<option value="null">66</option><option value="null">67</option><option value="null">68</option> 	
										<option value="null">69</option><option value="null">70</option><option value="null">71</option> 	 	
										<option value="null">72</option><option value="null">73</option><option value="null">74</option> 	
										<option value="null">75</option>					
									</select>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Height : </label>
								<div class="w3agile__text col-sm-7 w3agile_banner_btom_login_left1">
									<select id="" onchange="change_country(this.value)" class="frm-field required">
										<option value="1">4ft - 121 cm</option><option value="2">4ft 1in - 124cm</option><option value="3">4ft 2in - 127cm</option><option value="4">4ft 3in - 129cm</option><option value="5">4ft 4in - 132cm</option><option value="6">4ft 5in - 134cm</option><option value="7">4ft 6in - 137cm</option><option value="8">4ft 7in - 139cm</option><option value="9">4ft 8in - 142cm</option><option value="10">4ft 9in - 144cm</option><option value="11">4ft 10in - 147cm</option><option value="12">4ft 11in - 149cm</option><option value="13">5ft - 152cm</option><option value="14">5ft 1in - 154cm</option><option value="15">5ft 2in - 157cm</option><option value="16">5ft 3in - 160cm</option><option value="17">5ft 4in - 162cm</option><option value="18">5ft 5in - 165cm</option><option value="19">5ft 6in - 167cm</option><option value="20">5ft 7in - 170cm</option><option value="21">5ft 8in - 172cm</option><option value="22">5ft 9in - 175cm</option><option value="23">5ft 10in - 177cm</option><option value="24">5ft 11in - 180cm</option><option value="25">6ft - 182cm</option><option value="26">6ft 1in - 185cm</option><option value="27">6ft 2in - 187cm</option><option value="28">6ft 3in - 190cm</option><option value="29">6ft 4in - 193cm</option><option value="30">6ft 5in - 195cm</option><option value="31">6ft 6in - 198cm</option><option value="32">6ft 7in - 200cm</option><option value="33">6ft 8in - 203cm</option><option value="34">6ft 9in - 205cm</option><option value="35">6ft 10in - 208cm</option><option value="36">6ft 11in - 210cm</option><option value="37">7ft - 213cm</option>					
									</select>
									<span>To </span>
									<select id="" onchange="change_country(this.value)" class="frm-field required">
										<option value="1">4ft - 121 cm</option><option value="2">4ft 1in - 124cm</option><option value="3">4ft 2in - 127cm</option><option value="4">4ft 3in - 129cm</option><option value="5">4ft 4in - 132cm</option><option value="6">4ft 5in - 134cm</option><option value="7">4ft 6in - 137cm</option><option value="8">4ft 7in - 139cm</option><option value="9">4ft 8in - 142cm</option><option value="10">4ft 9in - 144cm</option><option value="11">4ft 10in - 147cm</option><option value="12">4ft 11in - 149cm</option><option value="13">5ft - 152cm</option><option value="14">5ft 1in - 154cm</option><option value="15">5ft 2in - 157cm</option><option value="16">5ft 3in - 160cm</option><option value="17">5ft 4in - 162cm</option><option value="18">5ft 5in - 165cm</option><option value="19">5ft 6in - 167cm</option><option value="20">5ft 7in - 170cm</option><option value="21">5ft 8in - 172cm</option><option value="22">5ft 9in - 175cm</option><option value="23">5ft 10in - 177cm</option><option value="24">5ft 11in - 180cm</option><option value="25">6ft - 182cm</option><option value="26">6ft 1in - 185cm</option><option value="27">6ft 2in - 187cm</option><option value="28">6ft 3in - 190cm</option><option value="29">6ft 4in - 193cm</option><option value="30">6ft 5in - 195cm</option><option value="31">6ft 6in - 198cm</option><option value="32">6ft 7in - 200cm</option><option value="33">6ft 8in - 203cm</option><option value="34">6ft 9in - 205cm</option><option value="35">6ft 10in - 208cm</option><option value="36">6ft 11in - 210cm</option><option value="37" selected="">7ft - 213cm</option>					
									</select>
								</div>
								<div class="clearfix"></div>
							</div>				
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Marital Status : </label>
								<div class="col-sm-7 form_radios">
									<input type="checkbox" class="radio_1"> Single &nbsp;&nbsp;
									<input type="checkbox" class="radio_1" checked="checked"> Divorced &nbsp;&nbsp;
									<input type="checkbox" class="radio_1" value="Cheese"> Widowed &nbsp;&nbsp;
									<input type="checkbox" class="radio_1" value="Cheese"> Separated &nbsp;&nbsp;
									<input type="checkbox" class="radio_1" value="Cheese"> Any
								</div>
								<div class="clearfix"> </div>
							  </div>
							  <div class="form_but1">
								<label class="col-sm-5 control-label1" for="sex">Country : </label>
								<div class="col-sm-7 form_radios">
								  <div class="select-block1">
									<select>
										<option value="">Country1</option>
										<option value="">Country2</option>
										<option value="">Country3</option>
										<option value="">Country4</option>
										<option value="">Country5</option>
										<option value="">Country6</option> 
										<option value="">Country7</option> 
										<option value="">Country8</option> 
										<option value="">Country9</option> 
										<option value="">Country10</option> 
										<option value="">Country11</option> 
										<option value="">Country12</option> 
										<option value="">Country13</option> 
										<option value="">Country14</option>
										<option value="">Country15</option>  
										<option value="">Country16</option> 
										<option value="">Country17</option>
										<option value="">Country18</option> 
										<option value="">Country19</option>
										<option value="">Country20</option>  
										<option value="">Country21</option> 
										<option value="">Country22</option>  
										<option value="">Country23</option>
										<option value="">Country24</option>  
										<option value="">Country25</option> 
										<option value="">Country26</option> 
									</select>
								  </div>
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
								  <div class="select-block1">
									<select>
										<option value="">Hindu</option>
										<option value="">Sikh</option>
										<option value="">Jain-All</option>
										<option value="">Jain-Digambar</option>
										<option value="">Jain-Others</option>
										<option value="">Muslim-All</option> 
										<option value="">Muslim-Shia</option> 
										<option value="">Muslim-Sunni</option> 
										<option value="">Muslim-Others</option> 
										<option value="">Christian-All</option> 
										<option value="">Christian-Catholic</option> 
										<option value="">Jewish</option> 
										<option value="">Inter-Religion</option> 
									</select>
								  </div>
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
							 <asp:Button runat="server" Text="Search" ID="search"/>						
						</div>
					</div>					
				</div>
			</div>
		</div>
		<div class="col-md-3 w3ls-aside">
			<h3>Search by Profile ID:</h3>			
				<input class="form-control" type="text" runat="server" name="profile_id" placeholder="Enter Profile ID"/>
				<asp:Button runat="server" Text="Submit" ID="submit"/>
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
