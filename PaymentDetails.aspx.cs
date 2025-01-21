using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetWebProject1
{
    public partial class PaymentDetails : System.Web.UI.Page
    {
        private void GetData()
        {
            username.Text = Session["value1"].ToString();
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
            string Q = $"SELECT * FROM [dbo].[HOTELREGISTRATION] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd = new SqlCommand(Q, con);
            SqlDataAdapter SDA = new SqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            SDA.Fill(DS);
            GridView1.DataSource = DS.Tables[0];
            GridView1.DataBind();
            username.Text = Session["value1"].ToString();
            totalamount.Text = Session["value2"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow GVR = GridView1.Rows[e.RowIndex];
            SqlConnection con1 = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
            con1.Open();
            var Q1 = $"DELETE FROM [dbo].[HOTELREGISTRATION] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd1 = new SqlCommand( Q1, con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
            Response.Write("<script>alert('Data Deleted Succeessfully')</script>");
            GetData();
            username.Text = string.Empty;
            totalamount.Text = string.Empty;
        }

        protected void gobackbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HotelRegistrationPage.aspx");
        }
    }
}