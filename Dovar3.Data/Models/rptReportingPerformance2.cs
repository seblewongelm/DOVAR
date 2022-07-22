using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptReportingPerformance2
    {
        public Nullable<int> RegionId { get; set; }
        public Nullable<int> Year { get; set; }
        public Nullable<int> NoOfReport { get; set; }
        public Nullable<int> WoredaCount { get; set; }
        public string Region { get; set; }
        public int LocationId { get; set; }
        public string Month { get; set; }
    }
}
