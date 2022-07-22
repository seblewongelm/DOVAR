using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Disease
    {
        public Disease()
        {
            this.MonthlySummaries = new List<MonthlySummary>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Abbrevaton { get; set; }
        public virtual ICollection<MonthlySummary> MonthlySummaries { get; set; }
    }
}
