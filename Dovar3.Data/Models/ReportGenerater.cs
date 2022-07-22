using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class ReportGenerater
    {
        public int Id { get; set; }
        public string ReportTitle { get; set; }
        public string ReportFileName { get; set; }
        public string ViewName { get; set; }
        public string DateFrom { get; set; }
        public string DateTo { get; set; }
        public string Parameter1 { get; set; }
        public string Parameter2 { get; set; }
        public string Parameter3 { get; set; }
        public string Parameter4 { get; set; }
        public string Parameter5 { get; set; }
        public string Parameter6 { get; set; }
        public string Parameter7 { get; set; }
    }
}
