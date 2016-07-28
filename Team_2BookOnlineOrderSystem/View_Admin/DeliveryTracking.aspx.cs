using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;
using Team_2BookOnlineOrderSystem.View_Admin;

namespace Team_2BookOnlineOrderSystem
{
    public partial class DeliveryTracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            Team2_BookDBEntities entities = new Team2_BookDBEntities();
            var c = (from d in entities.deliveries
                     join u in entities.users on d.userID equals u.userID
                     select new DeliveryList
                     {
                         deliveryId = d.deliveryID,
                         orderId = d.ordersID,
                         userId = u.userID,
                         userName = u.userName,
                         deliveryAddress = d.deliveryAddress,
                         deliveryDate = d.deliveryDate,
                         deliveryStatus = d.deliveryStatus
                     }).ToList<DeliveryList>();
            GridView1.DataSource = c;
            GridView1.DataBind();

        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int deliveryId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string status = (row.FindControl("txtDeliveryStatus") as TextBox).Text;
            using (Team2_BookDBEntities entities = new Team2_BookDBEntities())
            {
                delivery delivery = (from d in entities.deliveries
                                     where d.deliveryID == deliveryId
                                     select d).FirstOrDefault();
                delivery.deliveryStatus = status;
                entities.SaveChanges();
            }

            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        public void DeliveryGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Delivery ID";
                e.Row.Cells[3].Text = "Delivery Name";
                e.Row.Cells[4].Text = "Delivery Address";
                e.Row.Cells[5].Text = "Delivery Date";
                e.Row.Cells[6].Text = "Status";
                e.Row.Cells[7].Text = "";
            }
        }
    }
}