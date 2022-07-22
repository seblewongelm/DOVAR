using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptReportingPerformance
    {
        public string Month { get; set; }
        public string Region { get; set; }
        public Nullable<int> ReportYear { get; set; }
        public Nullable<int> NoofReport { get; set; }
        public Nullable<int> RegionId { get; set; }
        public Nullable<int> ZoneId { get; set; }
        public Nullable<int> WoredaCount { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public string RegionalLab { get; set; }
        public string RegionName { get; set; }
    }
}
