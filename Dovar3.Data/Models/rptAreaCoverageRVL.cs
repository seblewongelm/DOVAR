using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptAreaCoverageRVL
    {
        public Nullable<int> ReportYear { get; set; }
        public string RegionName { get; set; }
        public Nullable<int> TotalWoreda { get; set; }
        public Nullable<int> ReportingWoredas { get; set; }
        public Nullable<int> RegionId { get; set; }
        public string Month { get; set; }
        public string RegionalLab { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<int> ZoneId { get; set; }
        public Nullable<int> ReportMonth { get; set; }
    }
}
