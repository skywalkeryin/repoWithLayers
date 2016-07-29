using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem.View_Customer
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            TextBox1.Text = string.Empty;
            lbMsg.Text = "A mail is sent to " + email + ", please check to your email and reset your new password.";

        }
    }
}