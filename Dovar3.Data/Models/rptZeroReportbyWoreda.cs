using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptZeroReportbyWoreda
    {
        public int Year { get; set; }
        public string MonthName { get; set; }
        public string LocationName { get; set; }
        public string CreatedBy { get; set; }
        public string ReportSenderPhone { get; set; }
        public string ApprovedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> ApprovedDate { get; set; }
        public int Region { get; set; }
        public Nullable<int> OutbreakStatusId { get; set; }
    }
}
