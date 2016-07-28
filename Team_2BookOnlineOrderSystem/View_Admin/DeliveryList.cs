using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Team_2BookOnlineOrderSystem.View_Admin
{
    public class DeliveryList
    {
        private int dId;
        private int oId;
        private int uId;
        private string uName;
        private string dAddress;
        private DateTime dDate;
        private string dStatus;
        public int deliveryId
        {
            get { return dId; }
            set { dId = value; }
        }
        public int orderId
        {
            get { return oId; }
            set { oId = value; }
        }
        public int userId
        {
            get { return uId; }
            set { uId = value; }
        }
        public string userName
        {
            get { return uName; }
            set { uName = value; }
        }
        public string deliveryAddress
        {
            get { return dAddress; }
            set { dAddress = value; }
        }
        public DateTime deliveryDate
        {
            get { return dDate; }
            set { dDate = value; }
        }
        public string deliveryStatus
        {
            get { return dStatus; }
            set { dStatus = value; }
        }
    }
}
