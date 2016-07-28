using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDL;

namespace Team_2BookOnlineOrderSystem.View_Customer
{
    public partial class BooksList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Team2_BookDBEntities bookList = new Team2_BookDBEntities();
            // List<category> categoryList = bookList.GetCategories().ToList<category>();
            //GridView1.DataSource = categoryList;
            //GridView1.DataBind();

            using (Team2_BookDBEntities db = new Team2_BookDBEntities())
            {
                var results = (from p in db.products
                               join c in db.categories on p.categoryID equals c.categoryID
                               select new
                               {
                                   productName = p.productName,
                                   productCode = p.productCode,
                                   productPrice = p.productPrice,
                                   productImage = p.productImage,
                               }).ToList();

                DataList1.DataSource = results;
                DataList1.DataBind();
            }
        }

        //search button event
        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedCategory = DropDownList1.Text;
            string bookName = txtSearch.Text;
            lbTest.Text = selectedCategory;

            if (string.IsNullOrEmpty(bookName))
            {
                searchByCategoy(selectedCategory);
            }
            else
            {
                searchByBookName(bookName);
            }


        }

        private void searchByCategoy(string selectedCategory)
        {
            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {

                List<WebDL.category> cats = context.categories.ToList();
                var data = from p in context.products where p.category.categoryName == selectedCategory select p;


                DataList1.DataSource = data.ToList();
                DataList1.DataBind();


            }
        }

        private void searchByBookName(string bookName)
        {
            using (WebDL.Team2_BookDBEntities context = new WebDL.Team2_BookDBEntities())
            {

                List<WebDL.category> cats = context.categories.ToList();
                var data = from p in context.products where p.productName == bookName select p;
                List<product> products = data.ToList();

                

                DataList1.DataSource = products;
                DataList1.DataBind();


            }
        }




    }
}