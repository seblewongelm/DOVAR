using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class LocationShape
    {
        public int Id { get; set; }
        public Nullable<int> ParentId { get; set; }
        public string LocationName { get; set; }
        public string LocationNameAmh { get; set; }
        public Nullable<int> LocationTypeId { get; set; }
        public string Code { get; set; }
        public Nullable<int> ID_R { get; set; }
    }
}
