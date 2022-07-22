using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptReportingPerformancebyZone1
    {
        public Nullable<int> ZoneId { get; set; }
        public Nullable<int> ReportYear { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public Nullable<int> NoofWoredas { get; set; }
        public Nullable<int> NoofReport { get; set; }
        public Nullable<int> LocationId { get; set; }
        public string Month { get; set; }
        public Nullable<int> ReportMonth { get; set; }
    }
}
