<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationSuccessfullPage.aspx.cs" Inherits="Asp.NetWebProject1.RegistrationSuccessfullPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Successfull</title>
    <style type="text/css">
        .auto-style1 {
            height: 600px;
            text-align: center;
            background-size:cover;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Images/pexels-pixabay-33545.jpg');">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Registration Successfull Please Click The Login Button" ForeColor="White"></asp:Label>
            <br />
            <br />
            </strong>
            <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="Login" Width="150px" onmouseover="this.style.backgroundColor = 'Red'"  onmouseout="this.style.backgroundColor = 'Blue'"/>
        </div>
    </form>
</body>
</html>
