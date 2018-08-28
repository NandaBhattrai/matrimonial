<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="matrimonial_project.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- page content -->
        <div class="right_col" role="main">    
                 <!-- top tiles -->
          <div class="row tile_count">
            <div class="row top_tiles">             
              <a href="RegisterList.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-caret-square-o-right"></i></div>
                  <div class="count"><asp:Label ID="RegisterCount" runat="server" Text=""></asp:Label></div>
                  <h3>Total Registration</h3>
                   <div class="count"><span  style="color:red; font-size:20px">Today:&nbsp;<asp:Label ID="TodayRegister" runat="server" Text=""></asp:Label></span></div>             
                </div>
              </div></a>
              <a href="UserList.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-sort-amount-desc"></i></div>
                  <div class="count"><asp:Label ID="ProfileCount" runat="server" Text=""></asp:Label></div>
                  <h3>Total Profile</h3>
                    <div class="count"><span  style="color:red; font-size:20px;">Today:&nbsp;<asp:Label ID="TodayProfile" runat="server" Text=""></asp:Label></span></div>
                </div>
              </div></a>
             <a href="Help.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count"><asp:Label ID="HelpCount" runat="server" Text=""></asp:Label></div>
                  <h3>Help Message</h3>
                  <div class="count"><span  style="color:red; font-size:20px;">Today:&nbsp;<asp:Label ID="TodayHelp" runat="server" Text=""></asp:Label></span></div>
                </div>
              </div></a>
               <a href="Feedback.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count"><asp:Label ID="FeedbackCount" runat="server" Text=""></asp:Label></div>
                  <h3>Feedback Message</h3>
                  <div class="count"><span  style="color:red; font-size:20px;">Today:&nbsp;<asp:Label ID="TodayFeedback" runat="server" Text=""></asp:Label></span></div>
                </div>
              </div></a>
               <a href="Assisted.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count"><asp:Label ID="AssistedCount" runat="server" Text=""></asp:Label></div>
                  <h3>Assisted Message</h3>
                  <div class="count"><span  style="color:red; font-size:20px;">Today:&nbsp;<asp:Label ID="TodayAssisted" runat="server" Text=""></asp:Label></span></div>
                </div>
              </div></a>
                <a href="Report.aspx"><div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count"><asp:Label ID="ReportCount" runat="server" Text=""></asp:Label></div>
                  <h3>Report Profile</h3>
                  <div class="count"><span  style="color:red; font-size:20px;">Today:&nbsp;<asp:Label ID="TodayReport" runat="server" Text=""></asp:Label></span></div>
                </div>
              </div></a>
            </div>
          </div>
          <!-- /top tiles -->
          </div>                           
        <!-- /page content -->
</asp:Content>
