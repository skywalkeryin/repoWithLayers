using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem
{
    public partial class BookMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userName"] !=null)
            {
                lblWelcome.Text = Convert.ToString(Session["userName"]);
            }
        }

        protected void linkLogout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("/home.aspx");
        }
    }
}