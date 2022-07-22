using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class LocationType
    {
        public LocationType()
        {
            this.Locations = new List<Location>();
        }

        public int Id { get; set; }
        public string LocationTypeName { get; set; }
        public virtual ICollection<Location> Locations { get; set; }
    }
}
