<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="MyLogin2.aspx.cs" Inherits="SmartShop.MyLogin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1537px;
            height: 759px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
   
     <div class="auto-style1" style="background-image: url('Pics/Pics2/logn.jpg')">
    
        
           
               
         <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:Label ID="Label3" runat="server" Text="Account Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem>Seller Account</asp:ListItem>
             <asp:ListItem>Special Account</asp:ListItem>
             <asp:ListItem>Normal Account</asp:ListItem>
         </asp:DropDownList>
         <br />
         <br />
         <br />
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
        
           
               
        </div>
    
</asp:Content>
