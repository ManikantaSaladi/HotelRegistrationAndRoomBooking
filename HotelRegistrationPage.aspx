<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelRegistrationPage.aspx.cs" Inherits="Asp.NetWebProject1.HotelRegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Booking</title>
    <style>
        .div{
            height:600px;
            background-size:cover;
        }
        .div1{
            margin-left : 75px;
            height : 300px;
            width : 500px;
            text-align: center;
            margin-top: 0px;
            border-width:2px;
            border-style:solid;
            padding: 20px;
            border-radius: 20px;
            border: 5px solid #e6e6e6;
            transform:
                perspective(2000px)
                translate3d(0px, -66px, 198px)
                rotateX(-55deg)
                scale3d(0.86, 0.75, 1)
                translateY(50px);
            border-radius: 5px;
            will-change: transform;
            transition: 0.4s ease-in-out transform;

            &:hover {
                transform: scale3d(1, 1, 1);
              }
        }
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div" style="background-image: url('Images/pexels-vincent-gerbouin-445991-1179156.jpg')">
            <br />
            <br />
            <br />
            <div class="div1">

                <strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="Red" Text="Hotel Registration"></asp:Label>
                <br />
                <br />
                <br />
                </strong>
                <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="username" runat="server" Height="25px" Width="250px" placeholder="Enter Your Registration User Name" Required="Please Fill This Field"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Room Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="delux" runat="server" Font-Size="15pt" Text="Delux" GroupName="rt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="ordinary" runat="server" Font-Size="15pt" Text="Ordinary" GroupName="rt" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Amenities"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="ac" runat="server" Font-Size="15pt" Text="A/C" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="computer" runat="server" Font-Size="15pt" Text="Computer" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" Text="Book" Width="150px" onmouseover="this.style.backgroundColor='Red'" onmouseout="this.style.backgroundColor='Blue'" OnClick="Button1_Click"/>

            </div>
        </div>
    </form>
</body>
</html>
