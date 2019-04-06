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
    public partial class update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtproductid.Enabled = false;
            txtqty.Enabled = false;
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            txtproductid.Text = gr.Cells[1].Text;
            txtproductname.Text = gr.Cells[2].Text;
            txtstockprice.Text = gr.Cells[3].Text;
            txtsaleprice.Text = gr.Cells[4].Text;
            txtqty.Text = gr.Cells[5].Text;
            DropDownList1.Text = gr.Cells[6].Text;
            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int qty, newqty, total = 0;
            qty = Convert.ToInt32(txtqty.Text);
            newqty = Convert.ToInt32(txtnewqty.Text);
            total = qty + newqty;

            if (DropDownList1.SelectedIndex != 0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "update Import set productname='" + txtproductname.Text + "',stockPrice='" + txtstockprice.Text + "',salePrice='" + txtsaleprice.Text + "',productQty='" + total.ToString() + "',cateGory='" + DropDownList1.SelectedItem.ToString() + "' where productID='" + txtproductid.Text + "'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Update Successfully";
                con.Close();
                Response.Redirect("update.aspx");
            }
            else
            {
                lblmsg.Text = "Please Selected Category";
            }
           
        }
    }
}