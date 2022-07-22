using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptreportingworedasbyzone
    {
        public int Woreda { get; set; }
        public int Zone { get; set; }
        public string WoredaName { get; set; }
        public string ZoneName { get; set; }
        public int Id { get; set; }
    }
}
