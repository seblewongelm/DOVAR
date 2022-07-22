using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdoDiagnosisVaccinated
    {
        public Nullable<int> Id { get; set; }
        public int Year { get; set; }
        public string Month { get; set; }
        public string Disease { get; set; }
        public string Diagnosis { get; set; }
        public string Species { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public int LocationId { get; set; }
        public string PublicbodyName { get; set; }
        public int ReportMonth { get; set; }
    }
}
