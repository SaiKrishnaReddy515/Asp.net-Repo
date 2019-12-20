<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SmartShop.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<form id="form4" runat="server">
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v8 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
        <style>
            
            .auto-style1 {
                color: #003300;
            }
            
            .auto-style2 {
                color: #0066FF;
            }
            .auto-style3 {
                background-color: #000000;
            }
            
        </style>
	</head>

	<body>

		<div class="wrapper" >
			<div class="image-holder">
				<img src="images/registration-form-8.jpg" alt="">
			</div>
            	<div class="form-inner">
				<form action="">
					
                    <table>
                        <tr><td>

                            <div class="form-header">
						<h3>Sign up</h3>
						<img src="images/sign-up.png" alt="" class="sign-up-icon">
					</div>
                            <tr><td> <label for=""><a href="Login.aspx" style="color:white">Already Have An Account</a></label></td></tr>
                            </td></tr>

                        <tr>
                            <td>
                                <div class="form-group">
						<label for="">Username:</label>
					</div>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>

                                <div class="form-group">
						<label for="">E-mail:</label>
					</div>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
                            </td>
                        </tr>
                        <tr><td>
                            <div class="form-group" >
						<label for="">Password:</label>
					</div>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
                            </td></tr>
                        <tr><td>
                            <div class="form-group" >
						<label for="">Account Type</label>
                            </div>
                          
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3">
                                <asp:ListItem>Seller Account</asp:ListItem>
                                <asp:ListItem>Special Account</asp:ListItem>
                                <asp:ListItem>Normal Account</asp:ListItem>
                            </asp:DropDownList><br /><br />
                            


                            </td></tr>
                        
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="Create Account" Width="168px" OnClick="Button1_Click" />
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label" Visible="False"></asp:Label>
                            </td>
                          
                        </tr>
                       
                    </table>
					
                   
					
				</form>
			</div>

            
		
			
		</div>
		
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery.form-validator.min.js"></script>
		<script src="js/main.js"></script>
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</form>
</asp:Content>
