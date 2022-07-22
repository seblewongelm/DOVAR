using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptVaccination1
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
        public int ReportMonth { get; set; }
    }
}
