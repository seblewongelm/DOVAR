using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptobbyyearmonthzone
    {
        public string Species { get; set; }
        public string Disease { get; set; }
        public int ReportYear { get; set; }
        public int Zone { get; set; }
        public Nullable<int> outbreak { get; set; }
        public int Id { get; set; }
        public string LocationName { get; set; }
        public int ReportMonth { get; set; }
    }
}
