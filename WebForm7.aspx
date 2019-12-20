<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="SmartShop.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <style type="text/css">
        .auto-style1 {
            width: 1537px;
            height: 759px;
            text-align: center;
        }
              .auto-style2 {
                  color: #FFFFFF;
              }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">

         <div class="auto-style1" style="background-image: url('Pics/Pics2/logn.jpg')">
    
        
           <h3 class="auto-style2">Login Here</h3>
               
         <asp:Label ID="Label1" runat="server" Text="Email" CssClass="auto-style6" style="color: #FFFFFF"></asp:Label>
             <span class="auto-style6">&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style6" style="color: #FFFFFF"></asp:Label>
&nbsp;&nbsp;
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:Label ID="Label3" runat="server" Text="Account Type" CssClass="auto-style6" style="color: #FFFFFF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem>Seller Account</asp:ListItem>
             <asp:ListItem>Special Account</asp:ListItem>
             <asp:ListItem>Normal Account</asp:ListItem>
         </asp:DropDownList>
         <br />
         <br />
         <br />
         &nbsp;
             <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
    
        
           
               
        </div>
    </form>
</asp:Content>
