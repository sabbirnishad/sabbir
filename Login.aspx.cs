using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string u, p, user, pass;
            u = txtusername.Text;
            p = txtpassword.Text;
            user = u.ToUpper();
            pass = p.ToUpper();
            if (user == "USER" && pass == "USER")
            {
                Response.Redirect("Show.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Invalid User Name or Password');", true);
            }
            txtpassword.Text = "";
            txtusername.Text = "";
        }
    }
}