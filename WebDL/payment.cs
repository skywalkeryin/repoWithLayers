//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebDL
{
    using System;
    using System.Collections.Generic;
    
    public partial class payment
    {
        public int paymentID { get; set; }
        public int userID { get; set; }
        public int ordersDetailID { get; set; }
        public string paymentMode { get; set; }
        public System.DateTime paymentDate { get; set; }
        public string paymentStatus { get; set; }
        public double paymentAmount { get; set; }
        public string paymentDescription { get; set; }
        public string paymentAccount { get; set; }
    
        public virtual ordersDetail ordersDetail { get; set; }
        public virtual user user { get; set; }
    }
}
