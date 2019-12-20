<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="FinalPage.aspx.cs" Inherits="SmartShop.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    <form id="f1" runat="server">
    
        <div >
            <h3>My Orders</h3>
            <asp:GridView ID="GridView1" runat="server" Height="236px" Width="661px"  >
    </asp:GridView>
        
        
        
        <br />
    <br />
    <br />
    <br />
   <h3>Total Price :</h3> <asp:GridView ID="GridView2" runat="server" Height="119px" Width="137px">
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
            <h3 style="color:green">Please Enter Delivery Address</h3>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Your Mobile Numbeer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Address to Deliver"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
        <br />

        
   </div>
        </form>
</asp:Content>
