<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="matrimonial_project.View.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       .page_enabled
       {
           background-color: #3AC0F2;
           color: white;
           height: 20px;
           min-width: 20px;
           line-height: 20px;
           display: inline-block;
           text-align: center;
           text-decoration: none;
           border: 1px solid #2E99C1;
       }
       .page_disabled
       {
           background-color: #2E99C1;
           color: white;
           height: 20px;
           min-width: 20px;
           line-height: 20px;
           display: inline-block;
           text-align: center;
           text-decoration: none;
           border: 1px solid #2E99C1;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- featured profiles -->			
			<div class="w3layouts_featured-profiles" style="padding-top:0;">
				<div class="container">
				<!-- slider -->
				<div class="agile_featured-profiles">
					<h2>Featured Profiles</h2>
							<ul id="flexiselDemo3">
								<li>
									<asp:PlaceHolder runat="server" ID="test"></asp:PlaceHolder>					
								</li>								
							</ul>
					</div>   
			</div>
			<!-- //slider -->
                <div class="pagination" style="margin-left:300px">
              <asp:repeater id="rptpager" runat="server">
                   <itemtemplate>
                       <asp:linkbutton id="linkpage" runat="server" text='<%# Eval("text") %>' commandargument='<%# Eval("value") %>'
            cssclass='<%#  Convert.ToBoolean(Eval("enabled")) ? "page_enabled" : "page_disabled" %>'
             OnClick="linkpage_Click" onclientclick='<%# !Convert.ToBoolean(Eval("enabled")) ? "return false;" : "" %>'>
                       </asp:linkbutton>
                      
                           
                   </itemtemplate>
               </asp:repeater>	
                    </div>	
			</div>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script><!-- flexisel-js -->	
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: false,
								autoPlaySpeed: 5000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:1
									},
									tablet: { 
										changePoint:768,
										visibleItems:1
									}
								}
							});
							
						});
					   </script>
				<!-- //featured profiles -->

	
		        
	   
</asp:Content>
