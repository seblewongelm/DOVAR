using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(DetailOutbreakMetadata))]
    public partial class DetailOutbreak
    {
        class DetailOutbreakMetadata
        {
            [Display(Name="Age Group")]
            public Nullable<int> AgeGroupId { get; set; }
            [Display(Name="Monthly Summary")]
            public Nullable<int> MonthlySummaryId { get; set; }
            [Display(Name = "Diagnosis")]
            public Nullable<int> DiagnosisId { get; set; }
            [Display(Name = "Status")]
            public Nullable<int> StatusId { get; set; }
            [Display(Name = "Sero Type")]
            public string SeroType { get; set; }
            [Display(Name = "Outbreak RefNo")]
            public Nullable<int> OutbreakRefNo { get; set; }
            
            [Display(Name = "Date Reported")]
            public Nullable<System.DateTime> DateReported { get; set; }
            [Display(Name = "Date Firstcase")]
            public Nullable<System.DateTime> DateFirstCase { get; set; }
            [Display(Name = "Sex")]
            public string Sex { get; set; }
            [Range(0,100000)]
            [Display(Name = "Cases")]
            public Nullable<int> Cases { get; set; }
            [Display(Name = "Deaths")]
            [Range(0, 100000)]
            public Nullable<int> Deaths { get; set; }
            [Display(Name = "Slaughtered")]
            [Range(0, 100000)]
            public Nullable<int> Slaughtered { get; set; }
           
            [Display(Name = "Total Cases")]
            [Range(0, 100000)]
            public Nullable<int> TotalCases { get; set; }
            [Display(Name = "Total Deaths")]
            [Range(0, 10000)]
            public Nullable<int> TotalDeaths { get; set; }
            [Display(Name = "Total Slaughtered")]
            [Range(0, 10000)]
            public Nullable<int> TotalSlaughtered { get; set; }
            [Display(Name = "Infected Units")]
            public Nullable<int> InfectedUnits { get; set; }
            [Display(Name = "Type of Unit")]
            public string TypeOfUnit { get; set; }
        }
       
    }
}
