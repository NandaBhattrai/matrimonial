<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="matrimonial_project.View.Admin.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../../Content/admin/GridviewPaging.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">           
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Feedback <small>Messages From Users</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                              <asp:Label ID="success" Text="" runat="server"></asp:Label>
                      <asp:GridView ID="FeedbackData" runat="server" AllowPaging="true" OnPageIndexChanging="FeedbackData_PageIndexChanging"
                            AutoGenerateColumns="false" OnRowCommand="FeedbackData_RowCommand1"
                            Width="100%"
                            HeaderStyle-HorizontalAlign="Left"                                
                            AlternatingRowStyle-CssClass="even"
                            DataKeyNames="Id" CssClass="table table-bordered table-hover">
                          <PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/>
                        <Columns>
                            <asp:TemplateField HeaderText="S No." ItemStyle-Width="5%">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField
                                        DataField="Id"
                                        HeaderText="Id">
                                        <ItemStyle VerticalAlign="Top" />
                                    </asp:BoundField>                                 
                                   <asp:BoundField 
                                       DataField="Name"
                                        HeaderText="Name">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                                    <asp:BoundField 
                                       DataField="Email"
                                        HeaderText="Email">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                                    <asp:BoundField 
                                       DataField="Phone"
                                        HeaderText="Phone">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                    <asp:BoundField 
                                       DataField="Username"
                                        HeaderText="Username">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>                                  
                                    <asp:BoundField 
                                       DataField="Date"
                                        HeaderText="Date">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                   <asp:BoundField 
                                       DataField="Status"
                                        HeaderText="Status">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Show"
                                        Text="Detail" CommandArgument='<%# Eval("Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>                              
                        </Columns>
                 </asp:GridView>
                      <i>You are viewing page
        <%=FeedbackData.PageIndex + 1%>
        of
        <%=FeedbackData.PageCount%>
        </i>                              
         </div>
         </div>
         </div>
          </div>      
            <!-- /top tiles -->
            
             <div class="col-md-12 col-sm-12 col-xs-12" id="Message" runat="server" visible="false">
              <div class="x_panel">
                <div class="x_title">
                  <h2><asp:Label runat="server" Text="" ID="Name"></asp:Label> <small>Feedback Message</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>                    
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <div class="dashboard-widget-content">

                    <ul class="list-unstyled timeline widget">
                      <li>
                        <div class="block">
                          <div class="block_content">                            
                            <div class="byline">
                                <input id="Fid" runat="server" visible="false" type="text"/>
                              <span><asp:Label runat="server" Text="" ID="Date"></asp:Label></span> by <a><asp:Label runat="server" Text="" ID="UserName"></asp:Label></a>
                            </div>
                            <p class="excerpt"><asp:Label runat="server" ID="FeedbackMessage" Text=""></asp:Label>
                            </p>
                            <asp:Button ID="Read" runat="server" Text="Read" OnClick="Read_Click"/>
                          </div>
                        </div>
                      </li>                      
                    </ul>
                  </div>
                </div>
              </div>
            </div>   
        </div>                
        <!-- /page content -->
</asp:Content>
