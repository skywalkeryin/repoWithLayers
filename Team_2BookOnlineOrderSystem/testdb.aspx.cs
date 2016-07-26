using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Team_2BookOnlineOrderSystem
{
    public partial class testdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {
                var data = from u in context.users where u.userID == 1 select u;
                WebDL.user tmpUser = data.First();
                Label1.Text = tmpUser.userEmail;

            }


        }
    }
}