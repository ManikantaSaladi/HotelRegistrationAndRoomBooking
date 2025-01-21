using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp.NetWebProject1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBTN_Click(object sender, EventArgs e)
        {
            string gen = "";
            if(Male.Checked == true)
            {
                gen = Male.Text;
            }
            else if (Female.Checked == true) 
            {
                gen = Female.Text;
            }

            string lan = "";
            if(Telugu.Checked == true)
            {
                lan = lan + Telugu.Text+", ";
            }
            if(English.Checked == true)
            {
                lan = lan +English.Text+", ";
            }
            if(Hindi.Checked == true)
            {
                lan = lan + Hindi.Text;
            }

            if(Password.Text == ConfirmPassword.Text)
            {
                if(gen != "")
                {
                    if(lan != "")
                    {
                        SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
                        con.Open();
                        string Q = @"INSERT INTO [dbo].[REGISTRATIONPROJECT1]
                           ([FirstName]
                           ,[LastName]
                           ,[UserName]
                           ,[Gender]
                           ,[Password]
                           ,[EmailId]
                           ,[PhoneNo]
                           ,[Address]
                           ,[Age]
                           ,[LanguageKnown]
                           ,[Country])
                        VALUES ('" + FirstName.Text + "','" + LastName.Text + "','" + UserName.Text + "','" + gen + "','" + Password.Text + "','" + Email.Text + "','" + PhoneNo.Text + "','" + Address.Text + "','" + Age.Text + "','" + lan + "','" + Country.SelectedItem + "')";
                        SqlCommand cmd = new SqlCommand(Q, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Your Registration Successfull')</script>");
                        Server.Transfer("RegistrationSuccessfullPage.aspx");
                        FirstName.Text = string.Empty;
                        LastName.Text = string.Empty;
                        UserName.Text = string.Empty;
                        Male.Checked = false;
                        Female.Checked = false;
                        Password.Text = string.Empty;
                        ConfirmPassword.Text = string.Empty;
                        Email.Text = string.Empty;
                        PhoneNo.Text = string.Empty;
                        Address.Text = string.Empty;
                        Age.Text = string.Empty;
                        Telugu.Checked = false;
                        English.Checked = false;
                        Hindi.Checked = false;
                        Country.Text = string.Empty;
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Select How Many Languages You Known')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Select Your Gender')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Check The Password And Confirm Password Both Are Not Same')</script>");
            }
        }

       
    }
}