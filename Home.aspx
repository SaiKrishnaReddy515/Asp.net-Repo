<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SmartShop.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
footer{
      padding: 10px 20px;
      background: #666;
      color: white;
      }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div id="carousel-example" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example" data-slide-to="1"></li>
    <li data-target="#carousel-example" data-slide-to="2"></li>
      <li data-target="#carousel-example" data-slide-to="3"></li>
      <li data-target="#carousel-example" data-slide-to="4"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active" >
      <a href="#"><img src="pics/pics2/bb1.jpg"  style="width:100%;"/></a>
     
    </div>
    <div class="item">
      <a href="#"><img src="pics/pics2/bb2.jpg" style="width:100%;" /></a>
     
    </div>
    <div class="item">
      <a href="#"><img src="pics/pics2/bb3.jpg" style="width:100%;" /></a>
    
    </div>
        <div class="item">
      <a href="#"><img src="pics/pics2/bb4.jpg" style="width:100%;" /></a>
    
    </div>

        <div class="item">
      <a href="#"><img src="pics/pics2/bb5.jpg" style="width:100%;"/></a>
    
    </div>
        <div class="item">
      <a href="#"><img src="pics/pics2/bb6.jpg" style="width:100%;"/></a>
    
    </div>
  </div>
        </div>

  
<footer>
      <p>Company © W3docs. All rights reserved.</p>
    </footer>
 
</asp:Content>

