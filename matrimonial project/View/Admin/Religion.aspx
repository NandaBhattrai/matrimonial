<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Religion.aspx.cs" Inherits="matrimonial_project.View.Admin.Religion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="adminScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel" runat="server">
            <ContentTemplate>
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Religion</h3>
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
                    <div class="form-group">
                      <label for="exampleInputEmail1">Religion</label>
                      <input type="text" class="form-control" id="Religion_" runat="server"/>
                    </div>
                    <div class="form-group">
                      <asp:Button runat="server" ID="add" Text="Add" OnClick="add_Click" CssClass="btn btn-primary"/>                  
                    </div>                 
                    <asp:Label runat="server" ID="msg" Text=""></asp:Label>
              </div>                                    
               </div>
              </div>
            </div>
              <div class="clearfix"></div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">                  
                  <div class="x_content">
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
         </div>
         </div> 
          </div>
        </div>
        <!-- /page content -->
                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
