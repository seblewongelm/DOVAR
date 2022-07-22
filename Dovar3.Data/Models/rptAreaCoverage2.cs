using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptAreaCoverage2
    {
        public string Region { get; set; }
        public Nullable<int> TotalWoreda { get; set; }
        public Nullable<int> ReportingWoredas { get; set; }
        public Nullable<int> Year { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public string Month { get; set; }
        public string RVL { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
    }
}
