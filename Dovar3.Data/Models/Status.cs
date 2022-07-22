using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Status
    {
        public Status()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public string StatusName { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
    }
}
