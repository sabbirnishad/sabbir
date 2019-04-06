using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("export.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("import.aspx");
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("expense.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("clientdetiles.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }
    }
}