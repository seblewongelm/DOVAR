using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Operation
    {
        public Operation()
        {
            this.RoleOperations = new List<RoleOperation>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public virtual ICollection<RoleOperation> RoleOperations { get; set; }
    }
}
