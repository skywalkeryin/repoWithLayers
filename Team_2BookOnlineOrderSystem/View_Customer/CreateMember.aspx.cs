using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_2BookOnlineOrderSystem.Member
{
    public partial class CreateMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
             using(WebDL.Team2_BookDBEntities cntx=new WebDL.Team2_BookDBEntities())
            {
                //var u = new user();            
                // u=  cntx.users.Where(m => m.userEmail == txtEmail.Text).FirstOrDefault();
                // if (u == null)
                // {
                    //var createUser=new user();
                    //createUser.userName = txtUserName.Text;
                    //createUser.roleID = 2;
                    //createUser.userPassword = txtPassword.Text;
                    //createUser.userEmail = txtEmail.Text;
                    //createUser.userPhone = Convert.ToInt32(txtPhoneNo.Text);
                    //createUser.userAddress = txtAddress.Text;
                    //createUser.userDescription = txtDesc.Text;                
                
                    //cntx.users.Add(createUser);
                    //    cntx.SaveChanges();
                    //    Response.Redirect("/LogIn.aspx");


                    //}
                    //else
                    //{
                    //    Response.Redirect("/Member/CreateMember.aspx");
                    //}
            }           
        }     
    }
}