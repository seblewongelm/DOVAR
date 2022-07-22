using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(MonthlyReportMetadata))]
    public partial class MonthlyReport
    {
        class MonthlyReportMetadata
        {

            [Display(Name = "Month")]
            public int ReportMonth { get; set; }
            [Display(Name = "Year")]
            public int ReportYear { get; set; }
            public int Status { get; set; }
            public int Region { get; set; }
            public int Zone { get; set; }
            public int Woreda { get; set; }
            [Display(Name = "Comment")]
            public string Ccomment { get; set; }
            [Display(Name = "Is Accepted")]
            public int IsReportAccepted { get; set; }
            [Display(Name = "Sender Name")]
            public string ReportSenderName { get; set; }
            [Display(Name = "Sender Phone")]
            public string ReportSenderPhone { get; set; }
            [Display(Name = "Qualification")]
            public Nullable<int> ReportSenderQualificationId { get; set; }
            [Display(Name = "Publicbody")]
            public Nullable<int> PublicBodyId { get; set; }

        }
    }
}