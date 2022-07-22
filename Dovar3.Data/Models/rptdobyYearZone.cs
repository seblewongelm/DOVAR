using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyYearZone
    {
        public int ReportYear { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public string LocationName { get; set; }
        public int Id { get; set; }
        public int Zone { get; set; }
    }
}
