using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptVaccinatedByDiseaseSpecy
    {
        public string Species { get; set; }
        public string Disease { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public int Id { get; set; }
    }
}
