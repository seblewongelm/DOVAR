using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Role
    {
        public Role()
        {
            this.RoleOperations = new List<RoleOperation>();
            this.UserRoles = new List<UserRole>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public virtual ICollection<RoleOperation> RoleOperations { get; set; }
        public virtual ICollection<UserRole> UserRoles { get; set; }
    }
}
