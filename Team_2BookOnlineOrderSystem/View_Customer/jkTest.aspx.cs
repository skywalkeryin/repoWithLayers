using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem.View_Customer
{
    public partial class jkTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {
                string catSelected = "Arts & Photography";
                List<WebDL.category> cats =  context.categories.ToList();
                var data = from p in context.products where p.category.categoryName == catSelected select p;

                
                ListView1.DataSource = data.ToList();
                ListView1.DataBind();


            }

        }
    }
}