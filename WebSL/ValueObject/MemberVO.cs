using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSL.ValueObject
{
    [Serializable]
    public class memberVO
    {
        public int useID { get; set; }
        public int roleID { get; set; }
        public string userName { get; set; }
        public string userPassword { get; set; }
        public string userEmail { get; set; }
        public int userPhone { get; set; }
        public string userAddress { get; set; }
        public string userDescription { get; set; }
        public int uID
        {
            get { return useID; }
            set { useID = value; }
        }
        public int rID
        {
            get { return roleID; }
            set { roleID = value; }
        }
        public string uName
        {
            get { return userName; }
            set { userName = value; }
        }
        public string uPassword
        {
            get { return userPassword; }
            set { userPassword = value; }
        }

        public string uEmail
        {
            get { return userEmail; }
            set { userEmail = value; }
        }

        public int PhoneNo
        {
            get { return userPhone; }
            set { userPhone = value; }
        }
        public string uAddress
        {
            get { return userAddress; }
            set { userAddress = value; }
        }
        public string uDescription
        {
            get { return userDescription; }
            set { userDescription = value; }
        }
    }
}