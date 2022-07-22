using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyRegion
    {
        public Nullable<int> Id { get; set; }
        public Nullable<int> Year { get; set; }
        public string Month { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public string Disease { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public string Species { get; set; }
        public Nullable<int> Case { get; set; }
        public Nullable<int> Death { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public Nullable<int> LocationId { get; set; }
        public Nullable<int> ReportMonth { get; set; }
        public Nullable<int> PublicBodyId { get; set; }
        public string PublicbodyName { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public int OutbreakStatusId { get; set; }
    }
}
