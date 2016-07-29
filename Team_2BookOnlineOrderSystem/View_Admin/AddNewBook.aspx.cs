using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class AdminAddNewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                var createProduct = new product();
                createProduct.categoryID = Convert.ToInt32(dropListCategoryType.SelectedValue);
                createProduct.productName = txtBookName.Text;
                createProduct.productCode = txtCodeNo.Text;
                createProduct.productQty = Convert.ToInt32(txtQty.Text);
                createProduct.productPrice = Convert.ToDouble(txtPrice.Text);
                createProduct.productDiscount = Convert.ToDouble(txtDiscount.Text);
                createProduct.productDiscountedPrice = Convert.ToDouble(txtDisPrice.Text);
                createProduct.productDescription = txtDesc.Text;
                if (fileUImage.HasFile)
                {
                    string filename = Path.GetFileName(fileUImage.PostedFile.FileName);
                    fileUImage.SaveAs(Server.MapPath("~/Images") + filename);
                    createProduct.productImage = filename;
                }

                //var checkBookCode = cntx.products.Where(a => a.productCode.Equals(txtCodeNo)).FirstOrDefault();
                //if (checkBookCode.productCode == null)
                //{
                cntx.products.Add(createProduct);
                cntx.SaveChanges();
                //}
                //lblError.Text = "Product code can't be same.Try again.";

                Response.Redirect("/View_Admin/AdminHome.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/View_Admin/AdminHome.aspx");
        }
    }
}