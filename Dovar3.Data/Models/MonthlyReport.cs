using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class MonthlyReport
    {
        public MonthlyReport()
        {
            this.ETH_adm3 = new List<ETH_adm3>();
            this.MonthlySummaries = new List<MonthlySummary>();
            this.shapes = new List<shape>();
        }

        public int Id { get; set; }
        public int ReportMonth { get; set; }
        public int ReportYear { get; set; }
        public int Status { get; set; }
        public int Region { get; set; }
        public int Zone { get; set; }
        public int Woreda { get; set; }
        public string Ccomment { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> LastModifiedBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public Nullable<int> ApprovedBy { get; set; }
        public Nullable<System.DateTime> ApprovedDate { get; set; }
        public Nullable<int> VerifiedBy { get; set; }
        public Nullable<System.DateTime> VerifiedDate { get; set; }
        public int IsReportAccepted { get; set; }
        public string ReportSenderName { get; set; }
        public string ReportSenderPhone { get; set; }
        public Nullable<int> ReportSenderQualificationId { get; set; }
        public Nullable<int> PublicBodyId { get; set; }
        public virtual DataStatu DataStatu { get; set; }
        public virtual ICollection<ETH_adm3> ETH_adm3 { get; set; }
        public virtual GMonth GMonth { get; set; }
        public virtual Location Location { get; set; }
        public virtual Location Location1 { get; set; }
        public virtual Location Location2 { get; set; }
        public virtual Publicbody Publicbody { get; set; }
        public virtual Qualification Qualification { get; set; }
        public virtual ReportYesNo ReportYesNo { get; set; }
        public virtual UserAccount UserAccount { get; set; }
        public virtual UserAccount UserAccount1 { get; set; }
        public virtual UserAccount UserAccount2 { get; set; }
        public virtual UserAccount UserAccount3 { get; set; }
        public virtual ICollection<MonthlySummary> MonthlySummaries { get; set; }
        public virtual ICollection<shape> shapes { get; set; }
    }
}
