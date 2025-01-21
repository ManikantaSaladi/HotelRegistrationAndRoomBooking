using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Schema;

namespace Asp.NetWebProject1
{
    public partial class HotelRegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int rtcost=0, amecost=0, totalcost=0;
            string rt = "";
            if (delux.Checked == true)
            {
                rt = delux.Text;
                rtcost = 2000;
            }
            else if (ordinary.Checked == true)
            {
                rt = ordinary.Text;
                rtcost = 1500;
            }

            string ame = "";
            if(ac.Checked == true)
            {
                ame = ame + ac.Text + ", ";
                amecost = amecost + 500;
            }
            if(computer.Checked == true)
            {
                ame = ame + computer.Text;
                amecost = amecost + 350;
            }

            totalcost = rtcost +amecost;

            if(rt != "")
            {
                if(ame != "")
                {
                    SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
                    con.Open();
                    string Q = $"SELECT * FROM [dbo].[REGISTRATIONPROJECT1] WHERE [UserName] = '{username.Text}'";
                    SqlCommand cmd = new SqlCommand(Q, con);
                    SqlDataReader SDR = cmd.ExecuteReader();
                    if (SDR.Read())
                    {
                        SqlConnection con1 = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
                        con1.Open();
                        string Q1 = @"INSERT INTO [dbo].[HOTELREGISTRATION]
                               ([UserName]
                               ,[RoomType]
                               ,[Amenities]
                               ,[TotalAmount])
                         VALUES ('" + username.Text + "','" + rt + "','" + ame + "','" + totalcost + "')";
                        SqlCommand cmd1 = new SqlCommand(Q1, con1);
                        cmd1.ExecuteNonQuery();
                        con1.Close();
                        Session["value1"] = username.Text;
                        Session["value2"] = totalcost;
                        Response.Write("<script>alert('Hotel Booked Successfull')</script>");
                        Server.Transfer("PaymentDetails.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid UserName')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Select The Amenities')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Select The Room Type')</script>");
            }
        }
    }
}