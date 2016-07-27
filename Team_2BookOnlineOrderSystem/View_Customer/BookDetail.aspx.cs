using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class BookDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Team2_BookDBEntities DB = new Team2_BookDBEntities();
            //using (Models.Team2_BookDBEntities context = new Models.Team2_BookDBEntities())
            // {

            var data1 = from b in DB.products where b.productID == 14 select b;
            WebDL.product book = data1.First();
            imgCover.ImageUrl = book.productImage;
            lbBooktitle.Text = book.productName;
            tbDescription.Text = book.productDescription;

            lbPrice1.Text = book.productPrice.ToString();
            lbbookDiscount.Text = book.productDiscount.ToString();
            lbBookqty.Text = book.productQty.ToString();
            lbDiscountedPrice1.Text = book.productDiscountedPrice.ToString();
        }
    }
}