using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyYearRegion
    {
        public Nullable<int> Id { get; set; }
        public Nullable<int> ReportYear { get; set; }
        public string MonthName { get; set; }
        public string RegionName { get; set; }
        public string ZoneName { get; set; }
        public string WoredaName { get; set; }
        public string Disease { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public string Species { get; set; }
        public Nullable<int> NewCases { get; set; }
        public Nullable<int> Death { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public string DiagnosisName { get; set; }
        public string StatusName { get; set; }
        public System.DateTime DateReported { get; set; }
        public System.DateTime DateFirstCase { get; set; }
        public Nullable<int> Cases { get; set; }
        public Nullable<int> Deaths { get; set; }
        public Nullable<int> Expr1 { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public Nullable<int> InfectedUnits { get; set; }
        public string FarmingSystem { get; set; }
        public Nullable<int> LocationId { get; set; }
    }
}
