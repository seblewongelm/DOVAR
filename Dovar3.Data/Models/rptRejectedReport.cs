using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptRejectedReport
    {
        public int IsReportAccepted { get; set; }
        public int ReportYear { get; set; }
        public string MonthName { get; set; }
        public string RegionalLab { get; set; }
        public int ReportMonth { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public int LocationId { get; set; }
    }
}
