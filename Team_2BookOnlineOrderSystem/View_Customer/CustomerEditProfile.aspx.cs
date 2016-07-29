using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class CustomerEditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                string loginUserName = Session["userName"].ToString();
                var editUser = cntx.users.Where(a => a.userName.Equals(loginUserName)).FirstOrDefault();
                if (editUser != null)
                {
                    txtUserName.Text = editUser.userName;
                    editUser.roleID = 2;
                    //txtPassword.Text = editUser.userPassword;
                    txtEmail.Text = editUser.userEmail;
                    txtPhoneNo.Text = Convert.ToString(editUser.userPhone);
                    txtAddress.Text = editUser.userAddress;
                    txtDesc.Text = editUser.userDescription;
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                string loginUserName = Session["userName"].ToString();
                var editUser = cntx.users.Where(a => a.userName.Equals(loginUserName)).FirstOrDefault();
                //var editUser = new user();
                if (editUser != null)
                {
                    editUser.userName = txtUserName.Text;
                    editUser.roleID = 2;
                    //editUser.userPassword = txtPassword.Text;
                    editUser.userEmail = txtEmail.Text;
                    editUser.userPhone = Convert.ToInt32(txtPhoneNo.Text);
                    editUser.userAddress = txtAddress.Text;
                    editUser.userDescription = txtDesc.Text;

                    cntx.SaveChanges();
                    clearData();
                    Response.Redirect("/Home.aspx");
                }
                Response.Redirect("/Home.aspx");
            }
        }

        protected void clearData()
        {
            txtUserName.Text = "";
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