<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="MyAbout.aspx.cs" Inherits="SmartShop.MyAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            margin-bottom: 0px;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            text-decoration: underline;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Pics/Pics2/con3.jpg')" textmode="MultiLine">
        <div>
        </div>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style5" Height="175px" ImageUrl="Pics/Pics2/contact us.png" Width="722px" />
            <br />
            <div style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: center;">
                <p class="auto-style6" style="box-sizing: border-box;">
                    Swing by for a cup of coffee, or leave us a message:</p>
            </div>
            <br class="auto-style6" />
            <asp:Label ID="Label2" runat="server"  Text="First Name" placeholder="First Name"></asp:Label>
&nbsp;<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Last Name" placeholder="Last name"></asp:Label>
&nbsp;<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server"  Text="Country" placeholder="Enter Country" ></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="State"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="Mobile Number"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text="Subject/Remarks"></asp:Label>
&nbsp;<br />
            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <asp:Label ID="Label8" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <div class="row" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                <br class="Apple-interchange-newline" />
            </div>
            <br />
            <br />
        </div>
    </form>
</asp:Content>
