<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="ItemsPage.aspx.cs" Inherits="SmartShop.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="if2" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" OnRowCommand="GridView1_RowCommand" Width="995px">
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
               
                <asp:ButtonField ButtonType="Button" CommandName="Select2" Text="Order Now"  ImageUrl="~/Pics/Pics2/Cart.png" />
               
    </Columns>

        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        </form>
</asp:Content>
