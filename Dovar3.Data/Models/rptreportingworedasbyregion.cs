using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptreportingworedasbyregion
    {
        public int Id { get; set; }
        public int ReportYear { get; set; }
        public string Region { get; set; }
        public string Woreda { get; set; }
        public string Zone { get; set; }
        public string Month { get; set; }
    }
}
