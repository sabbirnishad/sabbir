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
    public partial class expense : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string day, month, year;
            day = DateTime.Now.ToString("dd/MM/yyyy");
            month = DateTime.Now.ToString("MM/yyyy");
            year = DateTime.Now.ToString("yyyy");
            Day(day);
            Month(month);
            Year(year);
            
            
        }
        private void Day(string day)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select sum(expenseAmount) from Expense where expenseDay='"+day.ToString()+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lbldaytotal.Text = dt.Rows[0][0].ToString();
        }
        private void Month(string month)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select sum(expenseAmount) from Expense where expenseMonth='" + month.ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lblmonthtotal.Text = dt.Rows[0][0].ToString();
        }
        private void Year(string year)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select sum(expenseAmount) from Expense where expenseYear='" + year.ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lblyeartotal.Text = dt.Rows[0][0].ToString();
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try
            {
                 string month,year;
            month=DateTime.Now.ToString("MM/yyyy");
            year=DateTime.Now.ToString("yyyy");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into Expense values('"+txtexpenseamount.Text+"','"+txtpurpose.Text+"','"+txtdate.Text+"','"+month.ToString()+"','"+year.ToString()+"')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection=con;
            con.Open();
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Expense Entry Successfully";
            con.Close();
            Response.Redirect("expense.aspx");
            }
            catch (Exception)
            {

                lblmsg.Text = "Invalid Input";
            }
        }
    }
}