using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Inventory
{
    public partial class clientdetiles : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select count(email) from ClientInformation where email='"+txtemail.Text+"'",con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() != "1")
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "insert into ClientInformation values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "')";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblmsg.Text = "Data Save Successfully";
                    con.Close();
                }
                else
                {
                    lblmsg.Text = "This Email Already Used";
                }
             
            }
            catch (Exception)
            {
                
              
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select ClientInformation.firstName,ClientInformation.lastName,ClientInformation.clientAddress,ClientInformation.phone,ClientInformation.email,Export.productID,Export.productName,Export.Quantity,Export.total,Export.saleDay from ClientInformation inner join Export on ClientInformation.phone=Export.clientPhone where phone='"+txtsearch.Text+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}