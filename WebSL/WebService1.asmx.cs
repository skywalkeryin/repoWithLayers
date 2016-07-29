using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebDL;

namespace WebSL
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        DAO.memberDAO cusDAO = new DAO.memberDAO();
        Team2_BookDBEntities db = new Team2_BookDBEntities();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        // [WebMethod]
        //  public decimal GetTotal()
        //  {
        //
        //  }

        [WebMethod]
        public List<user> GetCustomers()
        {
            List<user> list = new List<user>();

            list = cusDAO.GetCustomers().ToList<user>();

            return list;
        }
        [WebMethod]

        public user GetByCustomerEmail(string email)
        {
            user cus = new user();

            cus = (user)cusDAO.GetCustomerByEmail(email);
            return cus;
        }

        [WebMethod]
        public int insertCustomer(user customer)
        {
            return cusDAO.InsertCustomer(customer);
        }

        //[WebMethod]
        //public int deleteCustomer(int id)
        //{
        //    //return cusDAO.DeleteCustomer(id);
        //}

        [WebMethod]
        public int updateCustomer(int id, user customer)
        {
            return cusDAO.updateCustomer(id, customer);
        }
    }
}