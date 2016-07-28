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

        //search button event
        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedCategory = DropDownList1.Text;
            string bookName = txtSearch.Text;
           

            if (string.IsNullOrEmpty(bookName))
            {
                searchByCategoy(selectedCategory);
            }
            else
            {
                searchByBookName(bookName);
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string productName = btn.CssClass;
            Session["productName"] = productName;
            Response.Redirect("BookDetail.aspx");

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string productName = btn.CssClass;

            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {
                string userNameFromSession = Session["userName"].ToString();
                var data = from p in context.products where p.productName == productName select p;
                var data2 = from u in context.users where u.userName == userNameFromSession select u;

                WebDL.user userGetFromSession = data2.First();
                WebDL.product pToBeAdded = data.First();
                WebDL.shoppingCart sc = new WebDL.shoppingCart();
                sc.product = pToBeAdded;
                sc.quantity = 1;
                sc.userID = userGetFromSession.userID;
                sc.shoppingCartExpiredDate = DateTime.Now.Date;
                context.shoppingCarts.Add(sc);
                context.SaveChanges();
                lbMsg.Text = "product: " + productName + " is added to shopping cart";
            }

        }

        private void searchByCategoy(string selectedCategory)
        {
            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {

                List<WebDL.category> cats = context.categories.ToList();
                var data = from p in context.products where p.category.categoryName == selectedCategory select p;


                DataList1.DataSource = data.ToList();
                DataList1.DataBind();


            }
        }

        private void searchByBookName(string bookName)
        {
            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {

                List<WebDL.category> cats = context.categories.ToList();
                var data = from p in context.products where p.productName == bookName select p;
                List<product> products = data.ToList();

                

                DataList1.DataSource = products;
                DataList1.DataBind();


            }
        }






    }
}