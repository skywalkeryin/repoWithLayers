using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem
{
    public partial class AdminEditBookProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFind(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                var findproduct = cntx.products.FirstOrDefault(m => m.productCode == txtBookCode.Text);
                if (findproduct != null)
                {
                    txtBookCode.Text = findproduct.productCode;
                    txtBookName.Text = findproduct.productName;
                    //dropListCategoryType.SelectedValue = findproduct.categoryID.ToString();

                    txtCategory.Text = findproduct.categoryID.ToString();
                    txtDescription.Text = findproduct.productDescription;
                    txtQuantity.Text = findproduct.productQty.ToString();
                    txtPrice.Text = findproduct.productPrice.ToString();
                    txtDiscount.Text = findproduct.productDiscount.ToString();
                    txtDiscountedPrice.Text = findproduct.productDiscountedPrice.ToString();

                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (Team2_BookDBEntities cntx = new Team2_BookDBEntities())
            {
                string productcode = txtBookCode.Text;
                var data = from f in cntx.products where f.productCode == productcode select f;
                product p = data.First();

                p.productName = txtBookName.Text;
                p.productCode = txtBookCode.Text;
                //dropListCategoryType.SelectedValue = p.categoryID.ToString();
                p.categoryID = Convert.ToInt32(txtCategory.Text);
                p.productDescription = txtDescription.Text;
                p.productQty = Convert.ToInt32(txtQuantity.Text);
                p.productPrice = Convert.ToInt32(txtPrice.Text);
                p.productDiscount = Convert.ToInt32(txtDiscount.Text);
                p.productDiscountedPrice = Convert.ToInt32(txtDiscountedPrice.Text);
                cntx.SaveChanges();
                lblSuccess.Text = "Update successfully.";
                ClearFields();
            }
        }

        private void ClearFields()
        {
            txtBookName.Text = string.Empty;
            txtBookCode.Text = string.Empty;
            //dropListCategoryType.Text = string.Empty;
            txtCategory.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtDiscount.Text = string.Empty;
            txtDiscountedPrice.Text = string.Empty;
            txtQuantity.Text = string.Empty;
            txtDescription.Text = string.Empty;

        }
    }
}