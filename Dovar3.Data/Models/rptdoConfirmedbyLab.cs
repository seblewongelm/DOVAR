using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdoConfirmedbyLab
    {
        public int Id { get; set; }
        public int ReportYear { get; set; }
        public string MonthName { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public string Region { get; set; }
        public string PublicbodyName { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public int LocationId { get; set; }
    }
}
