<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Religion.aspx.cs" Inherits="matrimonial_project.View.Admin.Religion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <!-- page content -->
        <div class="right_col" role="main">
            <asp:Button runat="server" ID="Add_btn" Text="Add Religion" CssClass="btn btn-primary pull-right" OnClick="Add_btn_Click" />
          <div class="row tile_count">           
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Religion List</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>                  
                  <div class="x_content" runat="server" id="List_Block">
                              <asp:Label ID="success" Text="" runat="server"></asp:Label>    
            <asp:GridView ID="ReligionData" runat="server" AllowPaging="true" OnPageIndexChanging="ReligionData_PageIndexChanging"
                AutoGenerateColumns="false" OnRowCommand="ReligionData_RowCommand"
                Width="100%"
                HeaderStyle-HorizontalAlign="Left"                                
                AlternatingRowStyle-CssClass="even"
                DataKeyNames="ReligionId" CssClass="table table-bordered table-hover">
                <PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/>
                        <Columns>
                            <asp:TemplateField HeaderText="S No." ItemStyle-Width="5%">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField
                                        DataField="ReligionId"
                                        HeaderText="Id">
                                        <ItemStyle VerticalAlign="Top" />
                                    </asp:BoundField>                                 
                                   <asp:BoundField 
                                       DataField="Religion"
                                        HeaderText="Religion">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>                         
                             <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="Show"
                                        Text="Delete" CommandArgument='<%# Eval("ReligionId") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>                                
                        </Columns>
            </asp:GridView>
                                   <i>You are viewing page
        <%=ReligionData.PageIndex + 1%>
        of
        <%=ReligionData.PageCount%>
        </i> 
         </div>
                <div class="x_content" runat="server" id="Add_Block" visible="false">
                    <asp:Label runat="server" ID="msg" Text=""></asp:Label>
                    <div class="form-group">
                        <input runat="server" id="Religion_" type="text" class="form-control" />
                    </div>
                    <div>
                        <asp:Button runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_Click" />
                    </div>
                </div>
         </div>
         </div>               
          </div>
        </div>
        <!-- /page content -->               
</asp:Content>
