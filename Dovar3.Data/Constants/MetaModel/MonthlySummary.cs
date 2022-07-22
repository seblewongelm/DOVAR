using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(MonthlySummaryMetadata))]
    public partial class MonthlySummary
    {
        class MonthlySummaryMetadata
        {
            [Display(Name = "Monthly Report")]
            public int MonthlyReportId { get; set; }
            [Display(Name = "Disease")]
            public Nullable<int> DiseaseId { get; set; }
            [Display(Name = "Species")]
            public Nullable<int> SpeciesId { get; set; }
            [Display(Name = "New Outbreak")]
            [Range(0,100000)]
            public Nullable<int> NewOutbreak { get; set; }
            [Display(Name = "Active Outbreak")]
            [Range(0,100000)]
            public Nullable<int> ActiveOutbreak { get; set; }
            [Display(Name = "New Cases")]
            [Range(0,100000)]
            public Nullable<int> NewCases { get; set; }
            [Range(0,100000)]
            public Nullable<int> Death { get; set; }
            [Range(0,100000)]
            public Nullable<int> Slaughtered { get; set; }
            [Display(Name = "Animal at risk")]
            [Range(0,100000)]
            public Nullable<int> AnimalAtRisk { get; set; }
            [Range(0,100000)]
            public Nullable<int> Control { get; set; }
            [Range(0,100000)]
            public Nullable<int> Prophylaxis { get; set; }
        }
    }
}
