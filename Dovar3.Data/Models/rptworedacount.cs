using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptworedacount
    {
        public int LocationTypeId { get; set; }
        public Nullable<int> WoredaCount { get; set; }
        public string RegionName { get; set; }
        public int RegionId { get; set; }
    }
}
