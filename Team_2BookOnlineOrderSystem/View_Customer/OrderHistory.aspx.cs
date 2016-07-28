using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem
{
    public partial class OrderHistory : System.Web.UI.Page
    {
        Table t = new Table();
        protected void Page_Load(object sender, EventArgs e)
        {
           // loadOrderTable(3);
            //PlaceHolder1.Controls.Add(t);
        }



        private Table loadOrderTable(int userid)
        {
            using  (WebDL.Team2_BookDBEntities bke = new WebDL.Team2_BookDBEntities ())
            {
                var date = from sel in bke.orders where sel.userID == userid select sel;
                List<WebDL.order> odl = date.ToList();
                
                foreach(WebDL.order o in odl)
                {
                    TableRow tr = new TableRow();
                    TableCell c1 = new TableCell();                   
                    TableCell c2 = new TableCell();             
                    TableCell c3 = new TableCell();
                    c1.Text = o.ordersID.ToString();
                    c2.Text = o.ordersDate.ToString();
                    c3.Text = o.ordersDescription.ToString();
                    tr.Cells.Add(c1);
                    tr.Cells.Add(c2);
                    tr.Cells.Add(c3);
                    t.Rows.Add(tr);
                }
                return t;
            }
           
        }
    }
}