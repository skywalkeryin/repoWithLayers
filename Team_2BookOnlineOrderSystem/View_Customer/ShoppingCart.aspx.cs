using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;
using Team_2BookOnlineOrderSystem.logics;
using System.Collections.Specialized;
using System.Collections;
using System.Web.ModelBinding;

namespace Team_2BookOnlineOrderSystem
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //Session["userName"] = "Preethi";
           
            using (ShoppingCartActions Action = new ShoppingCartActions()) 
            {
                decimal    carTotal = 0;
                carTotal = Action.GetTotal();
                if(carTotal>0)
                {
                    lblTotal1.Text = String.Format("{0:c}", carTotal);
                }
                else
                {
                    lblTotal1.Text = "";
                    ShoppingCartTitle.InnerText = "Shoping Cart is Empty";
                    btnRemove.Visible = false;
                    btnConfirm.Visible = false;
                }
            }


        }
       public List<shoppingCart> GetShoppingCartItems()
       {
            //Team2_BookDBEntities DB = new Team2_BookDBEntities();

            // var data = from s in DB.shoppingCarts where s.userID == session select s;
            //  WebDL.shoppingCart cartitem = shoppingcart.
            // List<shoppingCart> cartItems = data.ToList();
            ShoppingCartActions Action = new ShoppingCartActions();   //  CALL METHOD FROM LOGIC FILE AND RETRIVE FROM DATABASE
            return Action.CartItems();

        }
        public List<shoppingCart> UpdateCartItems()
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                String cartId = usersShoppingCart.GetCatrId();

                ShoppingCartActions.ShoppingCartUpdates[] cartUpdates = new ShoppingCartActions.ShoppingCartUpdates[CartList.Rows.Count];
                for (int i = 0; i < CartList.Rows.Count; i++)
                {
                    IOrderedDictionary rowValues = new OrderedDictionary();
                    rowValues = GetValues(CartList.Rows[i]);
                    cartUpdates[i].ProductId = Convert.ToInt32(rowValues["productID"]);

                    CheckBox cbRemove = new CheckBox();
                    cbRemove = (CheckBox)CartList.Rows[i].FindControl("Remove");
                    cartUpdates[i].RemoveItem = cbRemove.Checked;

                    TextBox quantityTextBox = new TextBox();
                    quantityTextBox = (TextBox)CartList.Rows[i].FindControl("PurchaseQuantity");
                    cartUpdates[i].PurchaseQuantity = Convert.ToInt16(quantityTextBox.Text.ToString());
                }
                usersShoppingCart.UpdateShoppingCartDatabase(cartId, cartUpdates);
                CartList.DataBind();
                lblTotal1.Text = String.Format("{0:c}", usersShoppingCart.GetTotal());
                
                return usersShoppingCart.CartItems();
          
            }
        }

        public static IOrderedDictionary GetValues(GridViewRow row)
        {
            IOrderedDictionary values = new OrderedDictionary();
            foreach (DataControlFieldCell cell in row.Cells)
            {
                if (cell.Visible)
                {
                    // Extract values from the cell.
                    cell.ContainingField.ExtractValuesFromCell(values, cell, row.RowState, true);
                }
            }
            return values;
        }



        protected void btnRemove_Click(object sender, EventArgs e)
        {

            UpdateCartItems();

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }


            
        



    }
}