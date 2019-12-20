<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="SellerHome.aspx.cs" Inherits="SmartShop.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            font-size: medium;
            color: #003300;
            text-decoration: underline;
        }
        .auto-style6 {
            width: 259px;
        }
        .auto-style7 {
            height: 20px;
            width: 232px;
        }
        .auto-style8 {
            width: 232px;
        }
        .auto-style9 {
            color: #003300;
            text-decoration: underline;
        }
        .auto-style10 {
            height: 20px;
            width: 256px;
        }
        .auto-style11 {
            width: 256px;
        }
        .auto-style12 {
            width: 16px;
        }
        .auto-style14 {
            color: #00FF00;
        }
        .auto-style15 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form3" runat="server">

   <div id="items" style="background-color:#F08080">
       <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <em><strong>
                <asp:Label ID="Label1" runat="server" Text="Product Catagory" CssClass="auto-style9"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style2">
                <em><strong>
                <asp:Label ID="Label2" runat="server" Text="Product Name" CssClass="auto-style3"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style10">
                <em><strong>
                <asp:Label ID="Label3" runat="server" Text="Product Image" CssClass="auto-style9"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style2">
                <em><strong>
                <asp:Label ID="Label4" runat="server" Text="Product Price" CssClass="auto-style9"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style2">
                <em><strong>
                <asp:Label ID="Label5" runat="server" Text="Discount" CssClass="auto-style9"></asp:Label>
                </strong></em>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:DropDownList  ID="DropDownList1" runat="server">
                    <asp:ListItem>Fruits and Vegetables</asp:ListItem>
                    <asp:ListItem>Electronics</asp:ListItem>
                    <asp:ListItem>Footwear</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox  class="form-control" ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:FileUpload  class="file" ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox class="form-control" ID="TextBox3" runat="server" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            
                
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">
                <asp:Image ID="Image1" runat="server" Height="55px" ImageUrl="~/Pics/upload.png" Width="46px" />
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Upload Details" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="My Items" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;
                <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text="Label" Visible="False"></asp:Label>
                &nbsp;</td>
            <td class="auto-style12">
                <br />
                <br />
            </td>
        </tr>
    </table>
   </div>
     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style15" GridLines="Vertical" Height="194px" Width="1409px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
        <asp:BoundField DataField="pcatagory" HeaderText="Catagory" />
        <asp:BoundField DataField="pname" HeaderText="Name" />
           
            <asp:BoundField DataField="pprice" HeaderText="Price" />
            <asp:BoundField DataField="pdiscount" HeaderText="Discount" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Width="150px" Height="100px"/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
    
    <br />
    <br />
    
    


   </form>
     
</asp:Content>
