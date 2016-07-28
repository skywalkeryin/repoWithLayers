using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem.View_Common
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities bookEnt = new Team2_BookDBEntities())
            {
                var userLogIn = bookEnt.users.FirstOrDefault(m => m.userEmail == txtEmail.Text && m.userPassword == txtPassword.Text);
                if (userLogIn != null)
                {
                    if (userLogIn.roleID == 1)
                    {
                        Session["userName"] = userLogIn.userName;
                        Response.Redirect("/View_Admin/ViewAllBooks.aspx");
                    }
                    else
                    {
                        Session["userName"] = userLogIn.userName;
                        Response.Redirect("/Home.aspx");
                    }
                }
                else
                {
                    lblError.Text = "User Name or Password is incorrect.";
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("/Home.aspx");
        }
    }
}