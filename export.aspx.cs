using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Inventory
{
    public partial class export : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtstockqty.Enabled = false;
            txttotal.Enabled = false;
           
            txtproductid.Enabled = false;
            txtproductname.Enabled = false;
            txtsaleprice.Enabled = false;
            lblstockprice.Visible = false;
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            GridViewRow gr = GridView1.SelectedRow;
            txtproductid.Text = gr.Cells[1].Text;
            txtproductname.Text = gr.Cells[2].Text;
            lblstockprice.Text=gr.Cells[3].Text;
            txtsaleprice.Text = gr.Cells[4].Text;
            txtstockqty.Text = gr.Cells[5].Text;
            ddlcategory.Text = gr.Cells[6].Text;
        }
        private void Sabbir()
        {
            int stockqty, qty, total = 0;
            stockqty = Convert.ToInt32(txtstockqty.Text);
            qty = Convert.ToInt32(txtqty.Text);
            total = stockqty - qty;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Import set productQty='" + total.ToString() + "' where productID='"+txtproductid.Text+"'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string day, month, year;
                day = DateTime.Now.ToString("dd/MM/yyyy");
                month = DateTime.Now.ToString("MM/yyyy");
                year = DateTime.Now.ToString("yyyy");
                   double price, qty, total = 0;
            price = Convert.ToDouble(txtsaleprice.Text);
            qty = Convert.ToDouble(txtqty.Text);
            total = price * qty;
            txttotal.Text = "BDT:" + total.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Export values('"+txtproductid.Text+"','"+txtproductname.Text+"','"+ddlcategory.SelectedItem.ToString()+"','"+txtsaleprice.Text+"','"+txtqty.Text+"','"+clientphone.Text+"','"+day.ToString()+"','"+month.ToString()+"','"+year.ToString()+"','"+lblstockprice.Text+"')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Product Export Sucessfully";
            con.Close();
            Sabbir();
            }
            catch (Exception)
            {
                
                
            }

        }

        
    }
}