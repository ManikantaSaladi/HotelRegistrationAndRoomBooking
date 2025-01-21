<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Asp.NetWebProject1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        .auto-style4 {
            margin-left : 417.5px;
            height : 300px;
            width : 500px;
            text-align: center;
            margin-top: 0px;
            border-width:2px;
            border-style:solid;
            padding: 20px;
            border-radius: 20px;
            border: 5px solid #e6e6e6;
            box-shadow: 0 70px 40px -20px rgba(0, 0, 0, 0.2);
            transform:
                perspective(900px)
                rotateX(60deg)
                scale(0.7);
            box-shadow: 0px 20px 100px #555;
            transition:0.5s ease all;

            &:hover {
            transform:
                  rotate(0deg)
                  scale(1)
                  translateY(10px);
              }
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .div{
           height : 600px;
           background-size:cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="div" style="background-image: url('Images/pexels-luis-gomes-166706-546819.jpg')">
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
                  <div class="auto-style4" style="background-color: #FFFFFF">

           <br />
           <strong>
           <asp:Label ID="label1" runat="server" CssClass="auto-style5" ForeColor="Red" Text="Login"></asp:Label>
           <br />
           <br />
           <br />
           </strong>

           <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="UserName" runat="server" Height="25px" Width="250px" Required="Please Fill This Filed" placeholder="Enter User Name"></asp:TextBox>
           <br />
           <br />
           <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="Password" runat="server" Height="25px" Width="250px" Required="Please Fill This Filed" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="checkbox" onchange="document.getElementById('Password').type = this.checked ? 'text' : 'Password'"/>Show Password
           <br />
           <br />
           <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" Text="Login" Width="150px" onmouseover="this.style.backgroundColor = 'Red'"  onmouseout="this.style.backgroundColor = 'Blue'" BorderColor="Black" OnClick="Button1_Click"/>

       </div>
       </div>
    </form>
</body>
</html>
