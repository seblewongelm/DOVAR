using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptAreaCoverageByZone
    {
        public Nullable<int> ReportYear { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public Nullable<int> ReportingWoredas { get; set; }
        public Nullable<int> WoredaCount { get; set; }
        public string Zone { get; set; }
        public string Region { get; set; }
        public Nullable<int> LocationId { get; set; }
        public string Month { get; set; }
    }
}
