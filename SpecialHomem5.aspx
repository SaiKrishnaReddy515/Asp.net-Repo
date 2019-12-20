

<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="SpecialHomem5.aspx.cs" Inherits="SmartShop.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  rel="stylesheet" href="Style1.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
  <h2>Meet the crazy-smart women we asked.</h2>
</div>
    

    <div class="banner">
         
        <video autoplay muted loop >
            <source  src="Shop.mp4"  type="video/mp4"/>
        
        </video>
        <div class="overlay-desc">
        <h1>SMART SHOP COMING TO YOUR HOME</h1>
      
     </div>
       
       
    </div>
  
    <table>
        <tr><td><h2 style="color:darkolivegreen;text-align:center">Fruits and Vegetables</h2></td>
            <td><h2 style="color:darkolivegreen;text-align:center">Electronics</h2></td>
            <td><h2 style="color:darkolivegreen;text-align:center">Footwear</h2></td>

        </tr>
<tr><td><a href="ItemsPage.aspx"><img  src="Pics/Pics2/Apple.jpg" class="img-circle" width="300px",height="700px"/>

        </a></td>
    <td><a href="ItemsPage2.aspx"><img  src="Pics/Pics2/Electronics.png" class="img-circle"width="300px",height="700px"/></a></td>
    <td><a href="#"><img  src="Pics/Pics2/Shoes.jpg" class="img-circle" width="300px",height="700px"/></a></td>


</tr>
    </table>

    
</asp:Content>
