using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem.View_Customer
{
    public partial class BooksList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities db = new Team2_BookDBEntities())
            {
                var results = (from p in db.products
                               join c in db.categories on p.categoryID equals c.categoryID
                               select new
                               {
                                   productName = p.productName,
                                   productCode = p.productCode,
                                   productPrice = p.productPrice,
                                   productImage = p.productImage,
                               }).ToList();

                DataList1.DataSource = results;
                DataList1.DataBind();
            }
        }
    }
}