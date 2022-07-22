using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdoDetailReporting
    {
        public Nullable<int> ReportYear { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public string MonthName { get; set; }
        public string Region { get; set; }
        public string RegionalLab { get; set; }
        public string Zone { get; set; }
    }
}
