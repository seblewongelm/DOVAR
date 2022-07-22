using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Species
    {
        public Species()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
            this.MonthlySummaries = new List<MonthlySummary>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Abbrevations { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
        public virtual ICollection<MonthlySummary> MonthlySummaries { get; set; }
    }
}
