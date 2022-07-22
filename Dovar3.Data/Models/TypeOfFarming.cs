using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class TypeOfFarming
    {
        public TypeOfFarming()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public string FarmingSystem { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
    }
}
