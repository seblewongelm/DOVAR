using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyYearWoreda
    {
        public int ReportYear { get; set; }
        public int Woreda { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public int Id { get; set; }
        public string Region { get; set; }
        public string LocationName { get; set; }
    }
}
