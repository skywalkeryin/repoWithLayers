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
                //createProduct.productID = 5;
                if (fileUImage.HasFile)
                {
                    string filename = Path.GetFileName(fileUImage.PostedFile.FileName);
                    fileUImage.SaveAs(Server.MapPath("~/Images") + filename);
                    createProduct.productImage = filename;
                }
                lblSuccessful.Text = "Success";
                cntx.products.Add(createProduct);
                cntx.SaveChanges();
            }
        }
    }
}