using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptNofoOutbreakByRegionAndDisease
    {
        public int NoofOutbreak { get; set; }
        public string Month { get; set; }
        public string Region { get; set; }
        public string Disease { get; set; }
        public string RVL { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
    }
}
