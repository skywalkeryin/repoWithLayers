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
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCogiggnee();
            PlaceHolder1.Controls.Add(createPaymentTable());
            loadPaymentList();

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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {



        }

        protected void btnConfirmPayment_Click(object sender, EventArgs e)
        {
            createOrderRecord();
            createOrderDetailRecord();
            createPaymentRecord();
        }

        private void createPaymentRecord()
        {
            using (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities())
            {

                payment addPayment = new payment();
             
                //addPayment.paymentID = 1;
                addPayment.userID = 5;
                addPayment.ordersDetailID = 2;
                addPayment.paymentStatus = "pending";
                addPayment.paymentAmount = 999;
                addPayment.paymentDescription = txPaymentDescrip.Text;
                addPayment.paymentMode = rblPaymentMode.SelectedValue.ToString();
                addPayment.paymentDate = DateTime.Now.Date;

                bke.payments.Add(addPayment);
                bke.SaveChanges();        
            }
        }

        private void createOrderRecord()
        {
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                order order = new order();
                order.userID = 3;
                order.ordersDate = DateTime.Now.Date;
                order.ordersDescription = "sad";

                bke.orders.Add(order);
                bke.SaveChanges();
            }
        }

        private void createOrderDetailRecord()
        {
            using (WebDL.Team2_BookDBEntities bke = new Team2_BookDBEntities())
            {
                ordersDetail odl = new ordersDetail();
                odl.ordersID = 2;
                odl.productID = 3;
                odl.quantity = 11000;
                odl.ordersDetailDescription = "sadasd";

                bke.ordersDetails.Add(odl);
                bke.SaveChanges();

            }
            {
                
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

        private Table createPaymentTable()
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

                return t;
            }

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
    }
}