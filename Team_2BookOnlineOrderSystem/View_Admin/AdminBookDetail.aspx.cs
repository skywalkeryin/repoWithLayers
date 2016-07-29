using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_2BookOnlineOrderSystem.logics;
using WebDL;

namespace Team_2BookOnlineOrderSystem.View_Admin
{
    public partial class AdminBookDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["userID"] = "Preethi";
            //Session["productName"] = "How to Deal with Anger";
            Team2_BookDBEntities DB = new Team2_BookDBEntities();
            ShoppingCartActions Action = new ShoppingCartActions();

            string pName = Action.getProductName();
            var data1 = from b in DB.products where b.productName == pName select b;

            WebDL.product book = data1.FirstOrDefault();
            var data2 = from c in DB.categories where c.categoryID == book.categoryID select c;
            WebDL.category cat = data2.First();
            imgCover.ImageUrl = book.productImage;
            lbBooktitle.Text = book.productName;
            tbDescription.Text = book.productDescription;
            lbCategory1.Text = cat.categoryName.ToString();
            lbPrice1.Text = book.productPrice.ToString();
            lbbookDiscount.Text = book.productDiscount.ToString();
            lbBookqty.Text = book.productQty.ToString();
            lbDiscountedPrice1.Text = book.productDiscountedPrice.ToString();
        }
        public void AddToCart(string name)
        {
            ShoppingCartActions Action = new ShoppingCartActions();
            Team2_BookDBEntities DB = new Team2_BookDBEntities();
            // Retrieve the product from the database.           
            string ShoppingCartId = Action.GetCatrId();
            var user = from u in DB.users where u.userName == ShoppingCartId select u;
            WebDL.user userdata = user.FirstOrDefault();
            var book = from b in DB.products where b.productName == name select b;
            WebDL.product bookdata = book.FirstOrDefault();
            var cartItem = DB.shoppingCarts.FirstOrDefault(
            c => c.user.userName == ShoppingCartId
            && c.product.productName == name);
            var product = DB.products.FirstOrDefault(p => p.productName == name);

            if (cartItem == null)
            {
                // Create a new cart item if no cart item exists.  
                cartItem = new shoppingCart
                {
                    productID = bookdata.productID,
                    quantity = Convert.ToInt32(tbQuantity.Text),
                    userID = userdata.userID,
                    shoppingCartExpiredDate = DateTime.Now.AddDays(7),
                    user = DB.users.SingleOrDefault(u => u.userID == userdata.userID),
                    product = DB.products.SingleOrDefault(p => p.productName == name)


                };

                DB.shoppingCarts.Add(cartItem);

            }
            else
            {
                // If the item does exist in the cart,                  
                // then add one to the quantity.                 
                cartItem.quantity += Convert.ToInt32(tbQuantity.Text);
            }
            product.productQty -= Convert.ToInt32(tbQuantity.Text);

            DB.SaveChanges();




        }

        protected void btnAddtocart_Click(object sender, EventArgs e)
        {
            ShoppingCartActions Action = new ShoppingCartActions();
            string pName = Action.getProductName();

            AddToCart(pName);



        }
    }
}