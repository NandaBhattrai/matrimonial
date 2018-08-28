<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RegisterList.aspx.cs" Inherits="matrimonial_project.View.Admin.RegisterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/admin/GridviewPaging.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="adminScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
  <asp:UpdatePanel ID="updatePanel" runat="server">
    <ContentTemplate>
     <!-- page content -->
        <div class="right_col" role="main">            
          <!-- top tiles -->
          <div class="row tile_count">           
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Register <small>List</small></h2>
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
                      <asp:GridView ID="RegisterData" runat="server" AllowPaging="true" PageSize="5" OnPageIndexChanging="RegisterData_PageIndexChanging"
                            AutoGenerateColumns="false" OnRowCommand="RegisterData_RowCommand"
                            Width="100%"
                            HeaderStyle-HorizontalAlign="Left"                                
                            AlternatingRowStyle-CssClass="even"
                            DataKeyNames="UserId" CssClass="table table-bordered table-hover">
                             <PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/> 
                        <Columns>
                            <asp:TemplateField HeaderText="S No." ItemStyle-Width="5%">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField
                                        DataField="UserId"
                                        HeaderText="Id">
                                        <ItemStyle VerticalAlign="Top" />
                                    </asp:BoundField>                                 
                                   <asp:BoundField 
                                       DataField="Name"
                                        HeaderText="Name">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                                     <asp:BoundField 
                                       DataField="Gender"
                                        HeaderText="Gender">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                                     <asp:BoundField 
                                       DataField="DateOfBirth"
                                        HeaderText="Date of birth">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                     <asp:BoundField 
                                       DataField="Religion"
                                        HeaderText="Religion">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>  
                                    <asp:BoundField 
                                       DataField="Email"
                                        HeaderText="Email">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                    <asp:BoundField 
                                       DataField="Mobile"
                                        HeaderText="Phone">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField> 
                                    <asp:BoundField 
                                       DataField="UserName"
                                        HeaderText="Username">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>                                                               
                                  <asp:BoundField 
                                       DataField="UserStatus"
                                        HeaderText="Status">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>    
                                    <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" CommandName="Show"
                                        Text="Detail" CommandArgument='<%# Eval("UserId") %>' UseSubmitBehavior="false" />

                                    <input type="button" runat="server" data-toggle="modal"  data-target=".bs-example-modal-sm" value="Detail" />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>                            
                        </Columns>
                 </asp:GridView>  
                      <i>You are viewing page
        <%=RegisterData.PageIndex + 1%>
        of
        <%=RegisterData.PageCount%>
        </i>                  
         </div>
         </div>
         </div>

              <div runat="server" id="myModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2"><h2><asp:Label runat="server" Text="" ID="Name"></asp:Label> <small>Registration Detail</small></h2></h4>
                        </div>
                        <div class="modal-body">
                           <ul class="list-unstyled timeline widget">
                                  <li>
                                    <div class="block">
                                      <div class="block_content">                            
                                        <div class="byline">
                                            <input id="Fid" runat="server" visible="false" type="text"/>
                                          <span><asp:Label runat="server" Text="" ID="Date"></asp:Label></span> by <a><asp:Label runat="server" Text="" ID="UserName"></asp:Label></a>
                                        </div>
                                            <ul class="messages">
                                           <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Registration Id :</h4>
                                              <blockquote class="message">
                                                 <h5><asp:Label Text="" runat="server"  ID="RegisterId"/></h5>
                                              </blockquote>                                  
                                            </div>
                                          </li>
                                          <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Gender :</h4>
                                              <blockquote class="message">
                                                <h5><asp:Label Text="" runat="server"  ID="Gender"/></h5>
                                               </blockquote>                                  
                                            </div>
                                          </li>
                                           <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Date Of Birth :</h4>
                                              <blockquote class="message">
                                                    <h5><asp:Label Text="" runat="server"  ID="Dob"/></h5>                             
                                               </blockquote>                                  
                                            </div>
                                          </li>
                                           <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Religion :</h4>
                                              <blockquote class="message">
                                                  <h5><asp:Label Text="" runat="server"  ID="Religion"/></h5>
                                              </blockquote>                                  
                                            </div>
                                          </li>
                                           <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Mobile :</h4>
                                              <blockquote class="message">
                                                <h5><asp:Label Text="" runat="server"  ID="Mobile"/></h5>                                            
                                              </blockquote>                                  
                                            </div>
                                          </li>
                                            <li>                            
                                           <div class="message_wrapper">
                                              <h4 class="heading">Email:</h4>
                                              <blockquote class="message">
                                                <h5><asp:Label Text="" runat="server"  ID="Email"/> </h5>
                                             </blockquote>                                  
                                            </div>
                                          </li>
                                        </ul>                                        
                                      </div>
                                    </div>
                                  </li>                      
                        </ul>
                        </div>
                        <div class="modal-footer">
                           <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" CssClass="btn btn-danger"/>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
                  </div>    
              </div>      
            <!-- /top tiles --> 
        </div>                
        <!-- /page content -->
</ContentTemplate>
 </asp:UpdatePanel>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function () {
            function ValModal () {
                $("#myModal").modal('show');
            }
            });
        });
    </script>
</asp:Content>
