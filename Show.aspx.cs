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
  
    public partial class Show : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                  lblstocktotal.Visible = false;
            invest();
           sale();
            expense();
            totalstock();
            total();
            }
            catch (Exception)
            {
                
                
            }

        }
        private void total()
        {
            
            
            double stock, sale, expense,subtotal=0,profit = 0;
            stock = Convert.ToDouble(lblstocktotal.Text);
            sale = Convert.ToDouble(lblsale.Text);
            expense = Convert.ToDouble(lblexpense.Text);
            subtotal = sale - stock;
            profit = subtotal - expense;
            lblprofit.Text = profit.ToString();
        }
        private void totalstock()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select sum(stocktotal) from Export",c);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lblstocktotal.Text = dt.Rows[0][0].ToString();
        }
      

        private void invest()
        {
            SqlDataAdapter sd = new SqlDataAdapter("select sum(total) from Import",c);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            lblinvest.Text = dt.Rows[0][0].ToString();
        }
        private void sale()
        {

            SqlDataAdapter sd = new SqlDataAdapter("select sum(total) from Export", c);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            lblsale.Text = dt.Rows[0][0].ToString();
        }
        private void expense()
        {

            SqlDataAdapter sd = new SqlDataAdapter("select sum(expenseAmount) from Expense", c);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            lblexpense.Text = dt.Rows[0][0].ToString();
        }
    }
}