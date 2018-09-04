<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserDetail.aspx.cs" Inherits="matrimonial_project.View.Admin.UserDetail" %>
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
              <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><asp:Label runat="server" Text="" ID="Name"></asp:Label><small>Profile</small></h2>
                      <asp:Label runat="server" Text="" ID="mes"></asp:Label>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-6 col-sm-6 col-xs-12 profile_left">
                      <div class="profile_img">                        
                          <asp:Label Text="" runat="server"  ID="UserImage"/>               
                       </div>
                        <input id="Fid" runat="server" visible="false" type="text"/>
                      <h3><span><asp:Label runat="server" Text="" ID="Date"></asp:Label></span></h3>
                        <ul class="list-unstyled user_data">
                        <li><i class="fa fa-map-marker user-profile-icon"></i>Profile ID : <asp:Label Text="" runat="server"  ID="ProfileId"/>
                        </li>
                        <li>
                          <i class="fa fa-briefcase user-profile-icon"></i>Date Of Birth : <asp:Label Text="" runat="server"  ID="UserDateOfBirth"/>
                        </li>
                        <li class="m-top-xs">
                          <i class="fa fa-external-link user-profile-icon"></i>Phone : <asp:Label Text="" runat="server"  ID="UserPhone"/>                         
                        </li>
                          <li class="m-top-xs">
                          <i class="fa fa-external-link user-profile-icon"></i>Email : <asp:Label Text="" runat="server"  ID="UserEmail"/>                         
                        </li>
                      </ul>                     
                       <!-- About family -->
                      <h4>Detail</h4>
                      <ul class="list-unstyled user_data">
                        <li>
                          <p>Family :</p>                          
                            <asp:Label Text="" runat="server"  ID="AboutFamily"/>                      
                        </li>
                        <li>
                          <p>My Self :</p>                          
                            <asp:Label Text="" runat="server"  ID="AboutMe"/>                    
                        </li>                        
                      </ul>
                      <!-- About family -->

                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">                      
                        <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">About User</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">About Partner</a>
                          </li>
                            <li role="presentation" class=""><a href="#tab_content3" role="tab" id="Citizenship-tab" data-toggle="tab" aria-expanded="false">Citizenship Picture</a>
                          </li>                        
                       </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                            <!-- start About user -->
                            <ul class="messages">
                              <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Education :</h4>
                                  <blockquote class="message">
                                    <h5> Education : <asp:Label Text="" runat="server"  ID="UserEducation"/></h5>
                                    <h5> Occupation : <asp:Label Text="" runat="server"  ID="Occupation"/></h5> 
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Appearance :</h4>
                                  <blockquote class="message">
                                        <h5>Age : <asp:Label Text="" runat="server"  ID="UserAge"/> </h5>
                                        <h5>Height : <asp:Label Text="" runat="server"  ID="UserHeight"/> </h5>
                                        <h5>Weight : <asp:Label Text="" runat="server"  ID="UserWeight"/> </h5>
                                        <h5>Complexion : <asp:Label Text="" runat="server"  ID="Apperance"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">LifeStyle :</h4>
                                  <blockquote class="message">
                                      <h5>Habit : <asp:Label Text="" runat="server"  ID="UserDiet"/>,<asp:Label Text="" runat="server"  ID="UserDrink"/>,<asp:Label Text="" runat="server"  ID="UserSmoke"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Location :</h4>
                                  <blockquote class="message">
                                    <h5>Country : <asp:Label Text="" runat="server"  ID="UserCountry"/> </h5>
                                        <h5>State : <asp:Label Text="" runat="server"  ID="UserState"/> </h5>
                                        <h5>District : <asp:Label Text="" runat="server"  ID="UserDistrict"/> </h5>
                                        <h5>Current Address : <asp:Label Text="" runat="server"  ID="UserStay"/></h5>    
                                  </blockquote>                                  
                                </div>
                              </li>
                                <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Others :</h4>
                                  <blockquote class="message">
                                    <h5>Marital : <asp:Label Text="" runat="server"  ID="UserMarital"/> </h5>
                                        <h5>Nationality : <asp:Label Text="" runat="server"  ID="UserNationality"/> </h5>
                                        <h5>Religion : <asp:Label Text="" runat="server"  ID="UserReligion"/> </h5>
                                        <h5>Caste : <asp:Label Text="" runat="server"  ID="UserCaste"/></h5>
                                      <h5>Mother Tongue : <asp:Label Text="" runat="server"  ID="UserMotherTongue"/></h5>
                                      <h5>Languages : <asp:Label Text="" runat="server"  ID="Languages"/></h5>
                                      <h5>Blood Group : <asp:Label Text="" runat="server"  ID="Blood"/></h5>    
                                  </blockquote>                                  
                                </div>
                              </li>
                            </ul>
                            <!-- end About user-->
                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                            <!-- start Partner -->
                             <ul class="messages">
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Looking For :</h4>
                                  <blockquote class="message">
                                     <h5>Search for : <asp:Label Text="" runat="server"  ID="PartnerGender"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                              <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Education :</h4>
                                  <blockquote class="message">
                                    <h5> Education : <asp:Label Text="" runat="server"  ID="PartnerEducation"/></h5>
                                    <h5> Occupation : <asp:Label Text="" runat="server"  ID="PartnerOccupation"/></h5> 
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Appearance :</h4>
                                  <blockquote class="message">
                                        <h5>Age : <asp:Label Text="" runat="server"  ID="PartnerAgeFrom"/><span>To</span> <asp:Label Text="" runat="server"  ID="PartnerAgeTo"/> </h5>
                                        <h5>Height : <asp:Label Text="" runat="server"  ID="PartnerHeightFrom"/><span>To</span><asp:Label Text="" runat="server"  ID="PartnerHeightTo"/></h5>
                                        <h5>Complexion :<asp:Label Text="" runat="server"  ID="PartnerComplexion"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">LifeStyle :</h4>
                                  <blockquote class="message">
                                      <h5>Habit : <asp:Label Text="" runat="server"  ID="PartnerDiet"/>,<asp:Label Text="" runat="server"  ID="PartnerDrink"/>,<asp:Label Text="" runat="server"  ID="PartnerSmoke"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Location :</h4>
                                  <blockquote class="message">
                                    <h5>Country : <asp:Label Text="" runat="server"  ID="PartnerCountry"/></h5>                                            
                                  </blockquote>                                  
                                </div>
                              </li>
                                <li>                            
                               <div class="message_wrapper">
                                  <h4 class="heading">Others :</h4>
                                  <blockquote class="message">
                                    <h5>Marital : <asp:Label Text="" runat="server"  ID="PartnerMarital"/> </h5>
                                    <h5>Religion : <asp:Label Text="" runat="server"  ID="PartnerReligion"/> </h5>
                                    <h5>Caste : <asp:Label Text="" runat="server"  ID="PartnerCaste"/></h5>
                                  </blockquote>                                  
                                </div>
                              </li>
                            </ul>
                            <!-- end Partner -->
                          </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="Citizenship-tab">
                            <!-- start Citizenship user -->
                            <ul class="messages">
                              <li>                            
                               <div class="message_wrapper">
                                  <asp:Label runat="server" ID="FrontImage" Text=""></asp:Label>                                  
                                </div>
                              </li>
                               <li>                            
                               <div class="message_wrapper">
                                   <asp:Label runat="server" ID="BackImage" Text=""></asp:Label>                                 
                                </div>
                              </li>                           
                            </ul>
                            <!-- end Citizenship user-->
                          </div>                          
                        </div>
                      </div>
                    </div>
                      
                  </div>
                    <asp:Button ID="Verified" runat="server" Text="Verified" CssClass="btn btn-Success" OnClick="Verified_Click" />
                    <asp:Button ID="Read" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="Read_Click"/>
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
