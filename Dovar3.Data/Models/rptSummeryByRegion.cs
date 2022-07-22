using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptSummeryByRegion
    {
        public int Id { get; set; }
        public int ReportYear { get; set; }
        public string MonthName { get; set; }
        public string Region { get; set; }
        public string Woreda { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string ReportSenderName { get; set; }
        public string QualificationName { get; set; }
        public string ReportSenderPhone { get; set; }
        public string YesNo { get; set; }
        public string PublicbodyName { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public Nullable<int> NewCases { get; set; }
        public Nullable<int> Death { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public string OutbreakRefNo { get; set; }
        public string DiagnosisName { get; set; }
        public string StatusName { get; set; }
        public Nullable<System.DateTime> DateFirstCase { get; set; }
        public Nullable<System.DateTime> DateReported { get; set; }
        public Nullable<int> Cases { get; set; }
        public Nullable<int> Deaths { get; set; }
        public Nullable<int> Expr1 { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public string AgeGroupName { get; set; }
        public Nullable<int> InfectedUnits { get; set; }
        public string FarmingSystem { get; set; }
        public int LocationId { get; set; }
    }
}
