<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="matrimonial_project.View.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Admin Profile</h3>
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
                     <div class="form-group" runat="server">
                      <label for="exampleInputEmail1">Admin Id</label>
                      <input type="text" class="form-control" id="passwordid" placeholder="Enter id" runat="server" disabled="disabled"/>
                        </div> 
                    <div class="form-group">
                      <label for="exampleInputEmail1">Name</label>
                      <input type="text" class="form-control" id="name" runat="server"  disabled="disabled"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Gender</label>
                      <input type="text" class="form-control" id="gender" runat="server" disabled="disabled"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Adress</label>
                      <input type="text" class="form-control" id="address" runat="server" disabled="disabled"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="email" runat="server" disabled="disabled"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Mobile</label>
                      <input type="text" class="form-control" id="mobile" runat="server" disabled="disabled"/>
                    </div>
                      <div class="form-group" id="EditDiv" runat="server" visible="true">             
                       <asp:Button text="Edit" ID="Edit" CssClass="btn btn-success" OnClick="Edit_Click" runat="server"/>
                    </div>
                      <div class="form-group" id="UpdateDiv" runat="server" visible="false">             
                       <asp:Button text="Update" ID="Update" CssClass="btn btn-success" OnClick="Update_Click" runat="server"/>
                    </div>
                       <asp:Label runat="server" ID="message" Text=""></asp:Label>
              </div>
                                        
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
</asp:Content>
