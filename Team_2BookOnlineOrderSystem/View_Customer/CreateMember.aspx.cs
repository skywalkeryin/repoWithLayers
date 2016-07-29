using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem.Member
{
    public partial class CreateMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                //var u = new user();            
                var u = cntx.users.Where(m => m.userEmail == txtEmail.Text).FirstOrDefault();
                if (u == null)
                {
                    var createUser = new user();
                    createUser.userName = txtUserName.Text;
                    createUser.roleID = 2;
                    createUser.userPassword = txtPassword.Text;
                    createUser.userEmail = txtEmail.Text;
                    createUser.userPhone = Convert.ToInt32(txtPhoneNo.Text);
                    createUser.userAddress = txtAddress.Text;
                    createUser.userDescription = txtDesc.Text;

                    cntx.users.Add(createUser);
                    cntx.SaveChanges();
                    clearData();
                    lblEmail.Text = "Successful created.";
                    Response.Redirect("/Home.aspx");
                }
                else
                {
                    lblEmail.Text = "Please fill a valid Email addrss.";
                }
            }
        }

        protected void clearData()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text = "";
            txtAddress.Text = "";
            txtDesc.Text = "";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home.aspx");
        }
    }
}