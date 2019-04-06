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
    public partial class import : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void btnaddproduct_Click(object sender, EventArgs e)
        {

             try
             {
                 if (DropDownList1.SelectedIndex != 0)
                 {
                     SqlCommand cmd = new SqlCommand();
                     cmd.CommandText = "insert into Import values('" + txtproductid.Text + "','" + txtproductname.Text + "','" + txtstockprice.Text + "','" + txtsaleprice.Text + "','" + txtqty.Text + "','" + DropDownList1.SelectedItem.ToString() + "')";
                     cmd.CommandType = CommandType.Text;
                     cmd.Connection = con;
                     con.Open();
                     cmd.ExecuteNonQuery();
                     lblmsg.Text = "Product Entry Complete";
                     con.Close();
                     Response.Redirect("import.aspx");
                 }
                 else
                 {
                     lblmsg.Text = "Please Select Category";
                 }
              
             }
             catch (Exception)
             {

                 lblmsg.Text = "Invalid Input";
             }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}