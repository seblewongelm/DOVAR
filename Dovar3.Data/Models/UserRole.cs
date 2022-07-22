using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class UserRole
    {
        public int Id { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> RoleId { get; set; }
        public virtual Role Role { get; set; }
        public virtual UserAccount UserAccount { get; set; }
    }
}
