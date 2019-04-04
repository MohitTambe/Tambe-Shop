<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="tambeshop.Home" %>
<asp:Content ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
<div class="container-fluid" style=" margin:0px; padding:0px;">

     <div class="row" style=" padding-top:1px; margin:0px; padding-bottom:1px; padding-left:0px; padding-right:0px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"  data-interval="5000" >
            <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Images/Corosuel/corosuel.jpg"  alt="1" height="450px" width="100%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Corosuel/corosuel1.jpg" alt="2" height="450px" width="100%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Corosuel/offer4.jpg" alt="3" height="450px" width="100%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Corosuel/corosuel3.jpg" alt="3" height="450px" width="100%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Corosuel/corosuel4.jpg" alt="3" height="450px" width="100%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Corosuel/coro1.jpg" alt="3" height="450px" width="100%" />
            </div>
        </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

     <div class="row shadow-lg" style=" padding-bottom:10px; padding-top:10px; margin:0px; ">
        <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Home/ad2.png" height="100%" width="100%"/>
        </div>
        <div class="col-lg-8 col-sm-8" style=" padding:0px; margin:0px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Home/ad1.png" height="100%" width="100%" />
        </div>
    </div>

     <div  class="row" style=" padding-bottom:10px; padding-top:10px;  margin:0px;">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Home/ad3.png" height="100%" width="100%"/>
    </div>
        
     <div class="row" style=" padding-bottom:10px; padding-top:10px; margin:0px;">
        
        <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
            <asp:ImageButton ID="ImageButton1" runat="server" height="100%" width="100%"  ImageUrl="~/Images/Home/ad5.png" />
        </div>
        <div class="col-lg-4 col-sm-4" style=" padding-left:5px; padding-right:5px; margin:0px;">
            <asp:ImageButton ID="ImageButton2" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad6.png"  />
        </div>
        <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
            <asp:ImageButton ID="ImageButton3" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad7.png"  />
        </div>
        
     </div>

     <div class="row shadow" style=" padding-bottom:10px; padding-top:0px; margin:0px;">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Home/ad8.png" height="100%" width="100%" />
      </div>   
       
     <div class="row" style=" padding:0px; margin:0px;">
            <div class="col-lg-4 col-sm-4 " style=" padding:0px; margin:0px;">
                <asp:ImageButton ID="ImageButton4" runat="server" height="100%" width="100%" 
                    ImageUrl="~/Images/Home/ad14.png" onclick="ImageButton4_Click"/>
            </div>
            <div class="col-lg-4 col-sm-4" style=" padding-left:5px; padding-right:5px; margin:0px;">
                <asp:ImageButton ID="ImageButton5" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad15.png" />
            </div>
            <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
                <asp:ImageButton ID="ImageButton6" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad17.png" />
            </div>
      </div>
      
     <div class="row shadow-lg" style=" padding-bottom:10px; padding-top:10px; margin:0px;">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Home/ad10.jpg" Height="120px" Width="100%"/>
      </div>  

     <div class="row" style=" padding:0px; margin:0px;">
            <div class="col-lg-4 col-sm-4" style=" padding-left:0px; padding-right:0px;">
                <asp:ImageButton ID="ImageButton7" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad11.png" />
            </div>
            <div class="col-lg-4 col-sm-4" style=" padding-left:10px; padding-right:10px;" >
                <asp:ImageButton ID="ImageButton8" runat="server" height="100%" width="100%" ImageUrl="~/Images/Home/ad12.jpg" />
            </div>
            <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
                <asp:ImageButton ID="ImageButton9" runat="server" height="100%" width="100%"  ImageUrl="~/Images/Home/ad13.jpg" />
            </div>
      </div>
            
     <div class="row justify-content-center" id="cat"><p>SHOP BY CATEGORIES</p> </div>
                
     <div class="row" style=" padding:20px;">
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton10" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofbangles.jpg" />
            </div>
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton11" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofearrings.jpg" />
            </div>
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton12" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofnecklace.jpg" />
            </div>
      </div>
        
     <div class="row" style=" padding:20px;" >
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton13" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofpendant.jpg" />
            </div>
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton14" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofchain.jpg" />
            </div>
            <div class="col-lg-4 col-sm-4">
                <asp:ImageButton ID="ImageButton15" runat="server"  height="100%" width="100%" ImageUrl="~/Images/Home/logoofRing.jpg" />
            </div>
      </div> 

     <div class="row justify-content-center" id="cat1"> <p>BRIDES OF INDIA</p></div>
                 
     <div class="row justify-content-center">
          <video controls autoplay="5"  id="video" width="100%">
                <source src="advideo.mp4" type="video/mp4"></source>
           </video>
     </div>
       
     <div class="row justify-content-center" style="padding-left:80px; padding-right:80px; padding-bottom:0px; padding-top:20px;">
            <div class="col-lg-8 col-sm-8">
                <div class="row">
                    <div class="container" id="heading1"> <p>BRIDES OF INDIA</p> </div> 
                </div>   
           
                <div class="row">
                    <div class="container" id="sub-title"> <p>Designed by centuries. recreated by Tambe Jewellery'S</p></div>  
                </div> 
            
                <div class="row">
                    <div class="container" id="content"> 
                        <p>India is a land of rich and varied cultures. 
                        TAMBE Gold & Sliver captures the essence of these varied and lavish 
                        Indian traditions and the jewellery specific to regions and these cultures, 
                        communicating to the people of this country that it can cater to all of them</p>  
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 col-sm-4" style=" padding:0px; margin:0px;">
                <center>
                <asp:Image ID="Image5" runat="server" CssClass=" img-fluid" ImageUrl="~/Images/Home/logoofbridesofindia.png" />
                </center>
            </div>
       </div> 
</div>
</asp:Content>