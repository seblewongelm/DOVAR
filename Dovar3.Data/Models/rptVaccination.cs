using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptVaccination
    {
        public int Id { get; set; }
        public int Year { get; set; }
        public string MonthName { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public int LocationId { get; set; }
        public string PublicbodyName { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public Nullable<int> NewCases { get; set; }
        public Nullable<int> Death { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public int ReportMonth { get; set; }
    }
}
