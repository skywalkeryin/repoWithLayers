using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using WebDL;
using System.Collections;

namespace Team_2BookOnlineOrderSystem
{
    public partial class Payment : System.Web.UI.Page
    {
        Table t = new Table();
        int orderID;
        
        ArrayList odIDList = new ArrayList();
        // Replace Session["userId"]
        int userId = 4;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCogiggnee();
            loadPaymentTable();
            PlaceHolder1.Controls.Add(t);
            loadPaymentList();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerEditProfile.aspx");
        }

        protected void btnConfirmPayment_Click(object sender, EventArgs e)
        {
            createOrderRecord();
            createOrderDetailRecord(orderID);
            Label3.Text = odIDList[0].ToString();
            createPaymentRecord(odIDList);
          
     //       createDeliveryRecord();
     //       SaveSession();
       //     Response.Redirect("ConfirmBooking.aspx");
        }

        private void loadPaymentList()
        {
            lbSubTotal.Text = sumTotalCost().ToString();
            lbDeliverCost.Text = "10";
            lbTotal.Text = (sumTotalCost() + 10).ToString();
        }

        private int sumTotalCost()
        {
            int price=0;
            int quantity=0;
            int sum = 0;
            for (int i = 0; i <t.Rows.Count; i++)
            {
                
                price = Convert.ToInt32(t.Rows[i].Cells[2].Text);
                quantity = Convert.ToInt32(t.Rows[i].Cells[3].Text);
                sum += price * quantity;
            }


            return sum;
        }

        private int  createOrderRecord()
        {
            order order = new order();
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {

                order.userID = userId;
                order.ordersDate = DateTime.Now.Date;
                order.ordersDescription = "";
                bke.orders.Add(order);
                bke.SaveChanges();
            }
            orderID=order.ordersID;
            return orderID;
        }

        private ArrayList createOrderDetailRecord(int orderId)
        {
            ordersDetail odl = new ordersDetail();
           
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                WebDL.shoppingCart sc = new shoppingCart();
                var data = from car in bke.shoppingCarts where car.userID == userId select car;
                List<WebDL.shoppingCart> scl = data.ToList();

                for (int i = 0; i < scl.Count; i++)
                {
                    odl.ordersID = orderId;
                    odl.productID = scl[i].productID;
                    odl.quantity = scl[i].quantity;
                    odl.ordersDetailDescription = "";
                    bke.ordersDetails.Add(odl);
                    bke.SaveChanges();

                   // var odId = (from r in bke.ordersDetails select r).Last();
                    //int lastID = bke.ordersDetails.AsEnumerable().Last().ordersDetailID;
                    odIDList[i] = odl.ordersDetailID;
                }                
            }

            return odIDList;
           
                
            
        }

        private void createPaymentRecord(ArrayList alOrderDetailID)
        {
            using (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities())
            {
                payment addPayment = new payment();

                for (int i = 0; i < alOrderDetailID.Count ; i++)
                {
                    addPayment.userID = userId;
                    addPayment.ordersDetailID = Convert.ToInt32(alOrderDetailID[i]);
                    addPayment.paymentStatus = "pending";
                    addPayment.paymentAmount = Convert.ToDouble(lbTotal.Text);
                    addPayment.paymentDescription = "";
                    addPayment.paymentMode = rblPaymentMode.SelectedValue.ToString();
                    addPayment.paymentDate = DateTime.Now.Date;
                    bke.payments.Add(addPayment);
                    bke.SaveChanges();               
                                        
                }
            }
        }

        private void createDeliveryRecord()
        {
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                delivery deli = new delivery();
                deli.userID = userId;
                deli.ordersID = orderID;
                deli.deliveryDate = Convert.ToDateTime(txtDeliveryDate.Text);              
                deli.deliveryStatus = "pending";
                deli.deliveryAddress = lbDeliveryAddress.Text;
                deli.deliveryDescription = txtDeliveryDescrip.Text;
                bke.deliveries.Add(deli);

                bke.SaveChanges();

            }
            
        }


        private Table loadPaymentTable()
        {
            using (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities())
            {
                var data = from sc in bke.shoppingCarts where sc.userID == userId select sc;
                List<shoppingCart> scs = data.ToList();

                foreach (shoppingCart s in scs)
                {
                    TableRow row = new TableRow();
                    TableCell c1 = new TableCell();
                    c1.Text = s.product.productName;
                    TableCell c2 = new TableCell();
                    c2.Text = s.product.productDescription;
                    TableCell c3 = new TableCell();
                    c3.Text = s.product.productPrice.ToString();
                    TableCell c4 = new TableCell();
                    c4.Text = s.quantity.ToString();
                    row.Cells.Add(c1);
                    row.Cells.Add(c2);
                    row.Cells.Add(c3);
                    row.Cells.Add(c4);
                    t.Rows.Add(row);
                }

               
            }
            return t;
        }

        private void loadCogiggnee()
        {
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities ())
            {
               

               //int  id =bke.users.Find(Session.["userId"]);
                var data = from ur in bke.users where ur.userID == userId select ur;
                WebDL.user user = data.First();
                lbCustomerName.Text= user.userName;
                lbDeliveryAddress.Text = user.userAddress;
                lbContactNumber.Text = user.userPhone.ToString();
            }

        }

        private void SaveSession()
        {
            string[] paymentInfor = new string[]{ lbCustomerName.Text, lbDeliveryAddress.Text , lbContactNumber.Text,
            rblPaymentMode.Text,txtDeliveryDate.Text , txtDeliveryDescrip.Text, lbTotal.Text};
            Session["paymentInfor"] = paymentInfor;  
        }

        private void removeShoppingCart()
        {
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                var sc = from f in bke.shoppingCarts where f.userID == userId select f;
                if (sc!=null)
                {
                    bke.shoppingCarts.RemoveRange(sc);
                    bke.SaveChanges();
                   
                }
            }


        }
    }
}