using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptdobyyearmonthregion
    {
        public string Disease { get; set; }
        public string species { get; set; }
        public int ReportYear { get; set; }
        public int Region { get; set; }
        public Nullable<int> Outbreak { get; set; }
        public string LocationName { get; set; }
        public int Id { get; set; }
    }
}
