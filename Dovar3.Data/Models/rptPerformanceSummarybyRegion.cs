using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptPerformanceSummarybyRegion
    {
        public Nullable<int> Year { get; set; }
        public string Region { get; set; }
        public string Month { get; set; }
        public Nullable<int> NoofWoredas { get; set; }
        public Nullable<int> ReportRecieved { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string RVL { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
    }
}
