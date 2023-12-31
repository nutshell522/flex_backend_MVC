namespace EFModels.EFModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ShoppingCart
    {
        [Key]
        public int CartId { get; set; }

        public int fk_MemberID { get; set; }

        public virtual CartItem CartItem { get; set; }

        public virtual Member Member { get; set; }
    }
}
