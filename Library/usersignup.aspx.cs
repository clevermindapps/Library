using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string usersignupmsg = "Sign Up Successful... Go to user login page to login";
            //System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //sb.Append("<script type = 'text/javascript'>");
            //sb.Append("window.onload=function(){");
            //sb.Append("alert('");
            //sb.Append(usersignupmsg);
            //sb.Append("')};");
            //sb.Append("</script>");
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script> alert('Testing'); </script>");
        }

        //User Signup Button Click
        protected void usersignup_Click(object sender, EventArgs e)
        {
            if(checkMemberExists())
            {
                Response.Write("<script>alert('" + "suman" + "');</script>");
                //string userexist = "User already exist, please try another ID";
                //System.Text.StringBuilder sb1 = new System.Text.StringBuilder();
                //sb1.Append("<script type = 'text/javascript'>");
                //sb1.Append("window.onload=function(){");
                //sb1.Append("alert('");
                //sb1.Append(userexist);
                //sb1.Append("')};");
                //sb1.Append("</script>");
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb1.ToString());
            }
            else
            {
                signupNewUser();
            }
        }

        bool checkMemberExists()
        { 
            try
            {
                SqlConnection con=new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox10.Text.Trim() +"');", con);
                SqlDataAdapter da=new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    return true;
                }
                else 
                { 
                    return false; 
                }

            }
            
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signupNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value.ToString());
                cmd.Parameters.AddWithValue("@city", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                string usersignupmsg = "Sign Up Successful... Go to user login page to login";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(usersignupmsg);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


                TextBox3.Text = null;
                TextBox4.Text = null;
                TextBox5.Text = null;
                TextBox6.Text = null;
                DropDownList1.SelectedValue= null;
                TextBox7.Text = null;
                TextBox8.Text = null;
                TextBox9.Text = null;
                TextBox10.Text = null;
                TextBox2.Text = null;

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}