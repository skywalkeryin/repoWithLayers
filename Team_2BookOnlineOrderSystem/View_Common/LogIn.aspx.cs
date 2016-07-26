using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_2BookOnlineOrderSystem.Models;

namespace Team_2BookOnlineOrderSystem
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            //using (Team2_BookDBEntities bookEnt = new Team2_BookDBEntities())
            //{
            //    var book = bookEnt.users.FirstOrDefault(m => m.userEmail == txtEmail.Text && m.userPassword == txtPassword.Text);
            //    if (book != null)
            //    {
            //        if (book.roleID == 1)
            //        {
            //            Session["userName"] = book.userName;
            //            Response.Redirect("/Home.aspx");
            //        }
            //    }

            //    else
            //    {
            //        lblError.Text = "User Name or Password is incorrect.";
            //    }
            //}
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home.aspx");
        }
    }
}