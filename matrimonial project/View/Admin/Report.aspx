<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="matrimonial_project.View.Admin.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                    <h2>Report <small>From Users</small></h2>
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
                        
            <asp:GridView ID="ReportData" runat="server" AllowPaging="true" OnPageIndexChanging="ReportData_PageIndexChanging"
                AutoGenerateColumns="false" OnRowCommand="ReportData_RowCommand"
                Width="100%"
                HeaderStyle-HorizontalAlign="Left"                                
                AlternatingRowStyle-CssClass="even"
                DataKeyNames="ReportId" CssClass="table table-bordered table-hover">
                <PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/>
                        <Columns>
                            <asp:TemplateField HeaderText="S No." ItemStyle-Width="5%">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField
                                        DataField="ReportId"
                                        HeaderText="Id">
                                        <ItemStyle VerticalAlign="Top" />
                                    </asp:BoundField>                                 
                                   <asp:BoundField 
                                       DataField="ReceiverId"
                                        HeaderText="Reported Id">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>                                    
                                    <asp:BoundField 
                                       DataField="Date"
                                        HeaderText="Date">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                <asp:BoundField 
                                       DataField="SenderId"
                                        HeaderText="Reported By">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                                   <asp:BoundField 
                                       DataField="ReportStatus"
                                        HeaderText="Status">
                                        <ItemStyle VerticalAlign="Top" />
                                   </asp:BoundField>
                             <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Btn" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="Read"
                                        Text="Read" CommandArgument='<%# Eval("ReportId") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>                                
                        </Columns>
            </asp:GridView>
                     <input id="Fid" runat="server" visible="false" type="text"/>
        <i>You are viewing page
        <%=ReportData.PageIndex + 1%>
        of
        <%=ReportData.PageCount%>
        </i> 
         </div>
         </div>
         </div>          
            
              
              </div>      
            <!-- /top tiles -->   
        </div>                
        <!-- /page content -->
                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
