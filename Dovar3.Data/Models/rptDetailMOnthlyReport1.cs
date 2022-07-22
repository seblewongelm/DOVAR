using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptDetailMOnthlyReport1
    {
        public int ReportYear { get; set; }
        public int ReportMonth { get; set; }
        public string MonthName { get; set; }
        public string Region { get; set; }
        public string RegionalLab { get; set; }
        public string Zone { get; set; }
        public string Wereda { get; set; }
        public int LocationId { get; set; }
        public Nullable<int> RegionId { get; set; }
    }
}
