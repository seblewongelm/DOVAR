using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyYear
    {
        public Nullable<int> Id { get; set; }
        public Nullable<int> ReportYear { get; set; }
        public string MonthName { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public string Kebele { get; set; }
        public string Disease { get; set; }
        public string OutbreakRefNo { get; set; }
        public string Diagnose { get; set; }
        public string Status { get; set; }
        public System.DateTime DateReported { get; set; }
        public System.DateTime DateFirstCase { get; set; }
        public string Species { get; set; }
        public Nullable<int> Cases { get; set; }
        public Nullable<int> Deaths { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public string AgeGroupName { get; set; }
        public Nullable<int> InfectedUnits { get; set; }
        public string FarmingSystem { get; set; }
    }
}
