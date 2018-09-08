<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="StoryView.aspx.cs" Inherits="matrimonial_project.View.StoryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float:right;"><a href="About.aspx"><h4>Go To Previous Page</h4></a></div>
    <div class="w3layouts_happy_asstd_marriages">
			<div class="container">
                <input runat="server" type="number" id="StoryId" visible="false" />
                <asp:Label ID="message" Text="" runat="server"></asp:Label>
                <div class="col-md-12 w3l_about" style="text-align:center;">
				<h3><asp:Label runat="server" ID="Sender"></asp:Label> Weds <asp:Label runat="server" ID="receiver"></asp:Label></h3>
                    
                </div>
				<div class="happy-clients-grids">
						<div class="col-md-12 w3l_about">
                            <h3 style="text-align:center"><asp:Label runat="server" ID="Wedding"></asp:Label></h3>
							<div class="client col-md-4">
								<asp:Label runat="server" ID="CoupleImage"></asp:Label>
							</div>
							<div class="col-md-8 w3l_about">
								<p><asp:Label runat="server" ID="Story"></asp:Label></p>								
							</div>
							<div class="clearfix"></div>
						</div>						
						<div class="clearfix"></div>
					</div>
			</div>
		</div>
</asp:Content>
