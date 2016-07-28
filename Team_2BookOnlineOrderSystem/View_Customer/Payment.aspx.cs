using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class Payment : System.Web.UI.Page
    {
        Table t = new Table();
        int orderID, orderDetailID;
        int[] orderDetailList = new int[] { };
      
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
            createPaymentRecord(orderDetailList);
            createDeliveryRecord();
            SaveSession();

            Response.Redirect("ConfirmBooking.aspx");
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
                
                order.userID = 3;
                order.ordersDate = DateTime.Now.Date;
                order.ordersDescription = "";
                bke.orders.Add(order);
                bke.SaveChanges();
            }
            orderID=order.ordersID;
            return orderID;
        }

        private int[] createOrderDetailRecord(int orderId)
        {
            ordersDetail odl = new ordersDetail();
           
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                WebDL.shoppingCart sc = new shoppingCart();
                var data = from car in bke.shoppingCarts where car.userID == 3 select car;
                List<WebDL.shoppingCart> scl = data.ToList();

                for (int i = 0; i < scl.Count; i++)
                {
                    odl.ordersID = orderId;
                    odl.productID = scl[i].productID;
                    odl.quantity = scl[i].quantity;
                    odl.ordersDetailDescription = "";
                    bke.ordersDetails.Add(odl);
                    bke.SaveChanges();
                    orderDetailList[i] = odl.ordersDetailID;
                }                
            }

            return orderDetailList;
           
                
            
        }

        private void createPaymentRecord(int [] orderDetailIDList)
        {
            using (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities())
            {
                payment addPayment = new payment();

                for (int i = 0; i < orderDetailIDList.Count(); i++)
                {
                    addPayment.userID = 5;
                    addPayment.ordersDetailID = orderDetailIDList[i];
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
                deli.userID = 4;
                deli.ordersID = 2;
                deli.deliveryDate = Convert.ToDateTime(txtDeliveryDate.Text);              
                deli.deliveryStatus = "pending";
                deli.deliveryAddress = lbDeliveryAddress.Text;
                deli.deliveryDescription = txtDeliveryDescrip.Text;
                bke.deliveries.Add(deli);

                bke.SaveChanges();

            }
            
        }

        private void oldTablePopulation()
        {
            DataTable dt = new DataTable();



            Table t = new Table();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow r = new TableRow();
                TableCell c = new TableCell();
                c.Text = dt.Rows[i][0].ToString();
                r.Cells.Add(c);
                t.Rows.Add(r);
            }
            PlaceHolder1.Controls.Add(t);
        }

        private Table loadPaymentTable()
        {
            using (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities())
            {
                var data = from sc in bke.shoppingCarts where sc.userID == 4 select sc;
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
                var data = from ur in bke.users where ur.userID == 4 select ur;
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



        }
    }
}