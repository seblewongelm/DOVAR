using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptobbymonthyear
    {
        public int ReportYear { get; set; }
        public string Disease { get; set; }
        public string Species { get; set; }
        public Nullable<int> outbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public int Id { get; set; }
        public int ReportMonth { get; set; }
    }
}
