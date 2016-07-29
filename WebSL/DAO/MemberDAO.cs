using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using WebDL;

namespace WebSL.DAO
{
    public class memberDAO
    {

        private Team2_BookDBEntities db = new Team2_BookDBEntities();

        public IQueryable<user> GetCustomers()
        {
            return db.users;
        }


        public int InsertCustomer(user customer)
        {
            int result = 0;

            db.users.Add(customer);

            result = db.SaveChanges();

            return result;
        }

        public user GetCustomerByEmail(string email)
        {
            user customer = db.users.Find(email);
            if (customer == null)
            {

            }

            return customer;
        }

        public int updateCustomer(int id, user customer)
        {
            int result = 0;

            db.Entry(customer).State = EntityState.Modified;


            result = db.SaveChanges();


            return result;
        }

    }
}