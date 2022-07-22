using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class DetailOutbreak
    {
        public int Id { get; set; }
        public Nullable<int> AgeGroupId { get; set; }
        public Nullable<int> MonthlySummaryId { get; set; }
        public Nullable<int> DiagnosisId { get; set; }
        public Nullable<int> StatusId { get; set; }
        public string SeroType { get; set; }
        public string OutbreakRefNo { get; set; }
        public Nullable<double> Longitude { get; set; }
        public Nullable<double> Latitude { get; set; }
        public Nullable<int> LocationId { get; set; }
        public System.DateTime DateReported { get; set; }
        public System.DateTime DateFirstCase { get; set; }
        public Nullable<int> Sex { get; set; }
        public Nullable<int> SpeciesId { get; set; }
        public Nullable<int> Cases { get; set; }
        public Nullable<int> Deaths { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> TotalCases { get; set; }
        public Nullable<int> TotalDeaths { get; set; }
        public Nullable<int> TotalSlaughtered { get; set; }
        public Nullable<int> InfectedUnits { get; set; }
        public Nullable<int> TypeOfUnit { get; set; }
        public virtual AgeGroup AgeGroup { get; set; }
        public virtual Diagnosis Diagnosis { get; set; }
        public virtual Gender Gender { get; set; }
        public virtual Location Location { get; set; }
        public virtual MonthlySummary MonthlySummary { get; set; }
        public virtual Species Species { get; set; }
        public virtual Status Status { get; set; }
        public virtual TypeOfFarming TypeOfFarming { get; set; }
    }
}
