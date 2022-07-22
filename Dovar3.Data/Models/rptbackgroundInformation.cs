using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptbackgroundInformation
    {
        public int Id { get; set; }
        public int Year { get; set; }
        public string Month { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string IsReortAccepted { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public string ReportSenderName { get; set; }
        public string QualificationName { get; set; }
        public int LocationId { get; set; }
        public string Ccomment { get; set; }
        public string PublicbodyName { get; set; }
        public Nullable<System.DateTime> ApprovedDate { get; set; }
        public string ReportSenderPhone { get; set; }
        public string CreatedBy { get; set; }
        public string ApprovedBy { get; set; }
    }
}
