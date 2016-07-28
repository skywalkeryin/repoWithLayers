using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Team2_BookDBEntities DB = new Team2_BookDBEntities();
            var data = from s in DB.shoppingCarts where s.userID == 4 select s;
            //WebDL.shoppingCart cartitem = shoppingcart.
            List<shoppingCart> cartItems = data.ToList();


            GridView1.DataSource = cartItems;
            GridView1.DataBind();

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

        }
   //     public List<shoppingCart> GetShoppingCartItems()
     //   {
       //     Team2_BookDBEntities DB = new Team2_BookDBEntities();
         //   var data = from s in DB.shoppingCarts where s.userID == 4 select s;
            //WebDL.shoppingCart cartitem = shoppingcart.
          //  List<shoppingCart> cartItems = data.ToList();
            //return cartItems;
            
        //}
    }
}