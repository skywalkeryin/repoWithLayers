using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem
{
    public partial class ConfirmBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSession();
        }


        private void loadSession()
        {
            string[] loadInfor = (string[])Session["paymentInfor"];
            lbName.Text = loadInfor[0];
            lbAddress.Text = loadInfor[1];
            lbContactNumber.Text = loadInfor[2];
            lbPaymentMode.Text = loadInfor[3];
            lbDate.Text = loadInfor[4];        
            lbDescription.Text = loadInfor[5];
            lbTotalAmount.Text = loadInfor[6];
        }
    }
}