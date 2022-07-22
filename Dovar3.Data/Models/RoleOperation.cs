using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class RoleOperation
    {
        public int Id { get; set; }
        public int RoleId { get; set; }
        public int OperationId { get; set; }
        public virtual Operation Operation { get; set; }
        public virtual Role Role { get; set; }
    }
}
