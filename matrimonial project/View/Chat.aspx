<%@ Page Title="" Language="C#" MasterPageFile="~/View/Matrimonial.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="matrimonial_project.View.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/matrimonial/Chat/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/matrimonial/Chat/css/messsages.css" rel="stylesheet" />
    <link href="../Content/matrimonial/Chat/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
         <style type="text/css">
             .ms-scrollbar::-webkit-scrollbar-track{background-color:#CCCCCC;}
             .ms-scrollbar::-webkit-scrollbar{width: 7px;background-color: #F5F5F5;}
             .ms-scrollbar::-webkit-scrollbar-thumb{background-color:#eeeeee;-webkit-box-shadow: inset 0 0 0px rgba(0,0,0,0.3);}
             .ms-new{box-shadow:0 2px 5px rgba(0,0,0,0.16),0 2px 10px rgba(0,0,0,0.12); background-color:#2196f3;}
         </style> 
    <script src="../Content/matrimonial/Chat/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
         <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">        
        window.onload = function () {
            $("div.lv-body").scrollTop(10000);
        };       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="adminScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <div class="container-fluid"> 
                 <div class="container ng-scope"> 
                     <div class="block-header"> 
                         <h2> sdfghj</h2>
                     </div>
                     <div class="card m-b-0" id="messages-main" style="box-shadow:0 0 40px 1px #c9cccd;">
                          <div class="ms-menu ms-scrollbar" style="overflow:scroll; overflow-x: hidden;"> 
                              <div class="ms-block">
                                   <div class="ms-user">
                                       <%--<asp:Image ID="Image1" runat="server" />--%>
                                  <h5 class="q-title" align="center">
                                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
                                   </div>
                              </div>
                              <div class="ms-block">
                                   <a class="btn btn-primary btn-block ms-new" href="#"><span class="glyphicon glyphicon-envelope"></span>&nbsp; New Message</a> 
                              </div><hr/> 
                              <div class="listview lv-user m-t-20">
                                  <asp:DataList ID="DataList1" runat="server">
                                      <ItemTemplate>
                                          <div class="lv-item media"> 
                                              <div class="lv-avatar pull-left">
                                                  <%--<asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Image","~/images/{0}") %>'/>--%>
                                              </div>
                                              <div class="media-body"> 
                                                  <div class="lv-title">                                                     
                                                  <asp:LinkButton ID="LinkButton1" ForeColor="Black" runat="server" Text='<%# Bind("SRegisterId") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                                              </div>
                                          </div>
                                      </ItemTemplate>
                                  </asp:DataList>                          
                                </div>
                          </div>
                         <div class="ms-body"> 
                             <div class="listview lv-message"> 
                                 <div class="lv-header-alt clearfix"> 
                                     <div id="ms-menu-trigger"> 
                                         <div class="line-wrap"> 
                                             <div class="line top">
                                             </div>
                                             <div class="line center"></div>
                                             <div class="line bottom"></div>
                                         </div>
                                     </div>
                                     <div class="lvh-label hidden-xs"> 
                                         <div class="lv-avatar pull-left">                                              
                                             <%--<asp:Image ID="Image3" runat="server" />--%>
                                         </div>
                                         <span class="c-black">
                                             <asp:Label ID="Label3" runat="server" Text=""></asp:Label><span style=" margin-left:8px; position:absolute; margin-top:12px;width: 8px;height: 8px;line-height: 8px; border-radius: 50%; background-color:#80d3ab;"></span></span> 
                                     </div>
                                 </div>
                                 <div class="lv-body" id="ms-scrollbar" style="overflow:scroll; overflow-x: hidden; height:520px;">
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                            <asp:DataList ID="DataList2" runat="server">
                                                 <ItemTemplate>  
                                                     <div class="lv-item media"> 
                                                         <div class="lv-avatar pull-left"> 
                                                            <%--<asp:Image ID="Image4" runat="server" ImageUrl='<%# Bind("Image") %>'/>--%>
                                                          </div>
                                                         <div class="media-body"> 
                                                             <div class="ms-item"> 
                                                                 <span class="glyphicon glyphicon-triangle-left" style="color:#000000;"></span> 
                                                                 <%--<asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>--%>
                                                             </div>
                                                             <small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; <asp:Label ID="Date" runat="server" Text='<%# Bind("Time") %>'></asp:Label></small> 
                                                         </div>
                                                     </div>
                                                   </ItemTemplate>
                                              </asp:DataList>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                 </div>
                                 <div class="clearfix"></div>
                                 <div class="lv-footer ms-reply"> 
                                    <asp:TextBox ID="TextBox1" runat="server" width="400px" height="51px"></asp:TextBox>.
                                    <asp:Button ID="Button1" runat="server" Text="Reply" OnClick="Button1_Click"/>
                                            <span class="glyphicon glyphicon-send"></span>                                    
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div> 
    <script src="../Content/matrimonial/Chat/css/jquery.js"></script>
    <script src="../Content/matrimonial/Chat/css/bootstrap.min.js"></script>   
</asp:Content>
	<!-- //Find your soulmate --> 
  <div class="w3_success-stories text-center" <%--style="padding:25px 0px 25px 0px; background-image:url(../Content/matrimonial/images/bgprint6.jpg)--%>">
        <center><h3>Happy Marriages</h3></center>
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="padding:0px 250px 0px 150px;">
    <div class="item active">
      <img src="../Content/matrimonial/images/p10.jpg" alt="Chania"/>
      <div class="carousel-caption">
        <h3>Chania</h3>
        <p style="padding-left:400px;">The atmosphere in Chania has a touch of Florence and Venice.</p>
      </div>
    </div>

    <div class="item">
      <img src="../Content/matrimonial/images/p11.jpg" alt="Chania"/>
      <div class="carousel-caption">
        <h3>Chania</h3>
        <p>The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.The atmosphere in Chania has a touch of Florence and Venice.</p>
      </div>
    </div>

    <div class="item">
      <img src="../Content/matrimonial/images/p2.jpg" alt="Flower" />
      <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
    </div>

    <div class="item">
      <img src="../Content/matrimonial/images/p5.jpg" alt="Flower"/>
      <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
	</div> 