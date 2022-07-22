using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptWoredaCountByZone
    {
        public int LocationTypeId { get; set; }
        public Nullable<int> WoredaCount { get; set; }
        public int ZoneId { get; set; }
        public string Zone { get; set; }
        public string Region { get; set; }
    }
}
