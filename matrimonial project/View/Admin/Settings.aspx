<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="matrimonial_project.View.Admin.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Admin Profile Setting</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..."/>
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">             
                             <div class="form-group" runat="server" visible="false">
                                  <label for="exampleInputEmail1">Id</label>
                                  <input type="email" class="form-control" id="passwordid" placeholder="Enter id" runat="server"/>
                                    </div> 
                             <div class="form-group">
                                  <label for="exampleInputEmail1">Name</label>
                                  <input type="text" class="form-control" id="name" runat="server"/>
                                </div>                              
                             <input runat="server" type="text" id="datapassword" visible="false" />
                                <div class="form-group">
                                  <label for="exampleInputPassword1">current Password</label>
                                  <input type="password" class="form-control" id="currentpassword" placeholder="Password" runat="server"/>
                                </div>
                             <asp:Button Text="Check" ID="checked" CssClass="btn btn-primary" runat="server" OnClick="checked_Click" />
                                <div id="checking" runat="server" class="form-group" visible="false">
                              <div class="form-group" runat="server">
                                  <label for="exampleInputPassword1">change Password</label>
                                  <input type="password" class="form-control" id="changePassword" disabled="disabled" placeholder="Password" runat="server"/>
                                </div>
                                 <div class="form-group" runat="server">
                                  <label for="exampleInputPassword1">confirm Password</label>
                                  <input type="password" class="form-control" id="confirmPassword" disabled="disabled" placeholder="Password" runat="server"/>
                                </div>  
                               <asp:Button text="Change Password" ID="submit" CssClass="btn btn-success" OnClick="submit_Click" runat="server" />
                                    <asp:Label runat="server" ID="message" Text=""></asp:Label> 
                             </div>
          
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

</asp:Content>
