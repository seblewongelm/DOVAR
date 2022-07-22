using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptreportingDiseasebyRegion1
    {
        public int Id { get; set; }
        public int Year { get; set; }
        public string Month { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public Nullable<int> InfectedUnits { get; set; }
        public string TypeofUnit { get; set; }
        public Nullable<int> OutbreakStatusId { get; set; }
    }
}
