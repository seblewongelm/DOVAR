using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class AgeGroup
    {
        public AgeGroup()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public string AgeGroupName { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
    }
}
