using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptnonReportingWoreda
    {
        public Nullable<int> Id { get; set; }
        public Nullable<int> ReportYear { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<int> LocationTypeId { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public string MonthName { get; set; }
        public Nullable<int> LocationId { get; set; }
        public string PublicbodyName { get; set; }
    }
}
