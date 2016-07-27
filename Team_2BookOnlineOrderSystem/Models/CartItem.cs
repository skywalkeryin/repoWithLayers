using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Team_2BookOnlineOrderSystem.Models
{
    public class CartItem
    {
        [Key]
        public  string ItemID { get; set; }
        public string CartID { get; set; }



    }
}