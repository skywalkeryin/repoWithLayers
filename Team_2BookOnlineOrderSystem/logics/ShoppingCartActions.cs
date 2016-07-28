using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Team_2BookOnlineOrderSystem.Models;
using WebDL;


namespace Team_2BookOnlineOrderSystem.logics
{
    public class ShoppingCartActions :IDisposable
    {
        Team2_BookDBEntities DB = new Team2_BookDBEntities();
        public void Dispose()
        {
            if(DB!=null)
            {
                DB.Dispose();
                DB = null;
            }
        }
        public string GetCatrId()
        {
            if (HttpContext.Current.Session["userName"] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session["userName"] = HttpContext.Current.User.Identity.Name;
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempCartId = Guid.NewGuid();
                    HttpContext.Current.Session["userName"] = tempCartId.ToString();
                }
            }
            return HttpContext.Current.Session["userName"].ToString();
        }
        public string getProductName()
        {
            
               return HttpContext.Current.Session ["productName"].ToString();

        }

        public void AddToCart(int  id)
        {
            // Retrieve the product from the database.           
            string  ShoppingCartId = GetCatrId();
            var user = from u in DB.users where u.userName == ShoppingCartId select u;
            WebDL.user userdata = user.FirstOrDefault();
             var cartItem = DB.shoppingCarts.FirstOrDefault(
              c => c.user.userName == ShoppingCartId
              && c.productID == id);
           
            if (cartItem == null)
            {
                // Create a new cart item if no cart item exists.  
                cartItem = new shoppingCart
                {
                    productID = id,
                    quantity = 1,
                    userID = userdata.userID,
                    shoppingCartExpiredDate = DateTime.Now.AddDays(7),
                    user = DB.users.SingleOrDefault(u => u.userID == userdata.userID),
                    product = DB.products.SingleOrDefault(p => p.productID == id)


                };
                
                DB.shoppingCarts.Add(cartItem);
            
            }
            else
            {
                // If the item does exist in the cart,                  
                // then add one to the quantity.                 
                cartItem.quantity++;
            }
            DB.SaveChanges();
        }
        public List<shoppingCart> CartItems()
        {
            string shoppingcartID = GetCatrId();
            var data = from s in DB.shoppingCarts where s.user.userName == shoppingcartID select s; // 用username 作为查询依据
          
              return data.ToList();
            

        }
        public decimal  GetTotal()
        {
            string shoppingcartID = GetCatrId();  
            var data1 = (decimal?)(from cartitems in DB.shoppingCarts where cartitems.user.userName == shoppingcartID select (int?)cartitems.quantity * cartitems.product.productDiscountedPrice).Sum();
            return data1 ?? decimal.Zero;
        }
        public void UpdateShoppingCartDatabase(String cartId, ShoppingCartUpdates[] CartItemUpdates)
        {
            using (var db = new Team2_BookDBEntities()) 
            {
                try
                {
                    int CartItemCount = CartItemUpdates.Count();
                    List<shoppingCart> myCart = CartItems();
                    foreach (var shoppingCart in myCart)
                    {
                        // Iterate through all rows within shopping cart list
                        for (int i = 0; i < CartItemCount; i++)
                        {
                            if (shoppingCart.product.productID == CartItemUpdates[i].ProductId)
                            {
                                if (CartItemUpdates[i].PurchaseQuantity < 1 || CartItemUpdates[i].RemoveItem == true)
                                {
                                    RemoveItem(cartId, shoppingCart.productID);
                                }
                                else
                                {
                                    UpdateItem(cartId, shoppingCart.productID, CartItemUpdates[i].PurchaseQuantity);
                                }
                            }
                        }
                    }
                }
                catch (Exception exp)
                {
                    throw new Exception("ERROR: Unable to Update Cart Database - " + exp.Message.ToString(), exp);
                }
            }
        }
        public void RemoveItem(string removeCartID, int removeProductID)
        {
            using (var db = new Team2_BookDBEntities())
            {
                try
                {
                    var myItem = (from c in db.shoppingCarts where c.user.userName == removeCartID && c.product.productID == removeProductID select c).FirstOrDefault();
                    if (myItem != null)
                    {
                        // Remove Item.
                        db.shoppingCarts.Remove(myItem);
                        db.SaveChanges();
                     
                    }
                }
                catch (Exception exp)
                {
                    throw new Exception("ERROR: Unable to Remove Cart Item - " + exp.Message.ToString(), exp);
                }
            }
        }

        public void UpdateItem(string updateCartID, int updateProductID, int quantity)
        {
            using (var db = new Team2_BookDBEntities())
            {
                try
                {
                    var myItem = (from c in db.shoppingCarts where c.user.userName == updateCartID && c.product.productID== updateProductID select c).FirstOrDefault();
                    if (myItem != null)
                    {
                        myItem.quantity= quantity;
                        db.SaveChanges();
                    }
                }
                catch (Exception exp)
                {
                    throw new Exception("ERROR: Unable to Update Cart Item - " + exp.Message.ToString(), exp);
                }
            }
        }
        public struct ShoppingCartUpdates
        {
            public int ProductId;
            public int PurchaseQuantity;
            public bool RemoveItem;
        }
    }
}