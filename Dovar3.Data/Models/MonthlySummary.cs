using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class MonthlySummary
    {
        public MonthlySummary()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public int MonthlyReportId { get; set; }
        public Nullable<int> DiseaseId { get; set; }
        public Nullable<int> SpeciesId { get; set; }
        public Nullable<int> NewOutbreak { get; set; }
        public Nullable<int> ActiveOutbreak { get; set; }
        public Nullable<int> NewCases { get; set; }
        public Nullable<int> Death { get; set; }
        public Nullable<int> Slaughtered { get; set; }
        public Nullable<int> AnimalAtRisk { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public int OutbreakStatusId { get; set; }
        public Nullable<int> Status { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
        public virtual Disease Disease { get; set; }
        public virtual MonthlyReport MonthlyReport { get; set; }
        public virtual OutbreakStatu OutbreakStatu { get; set; }
        public virtual Species Species { get; set; }
    }
}
