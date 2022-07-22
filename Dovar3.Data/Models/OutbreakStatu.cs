using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class OutbreakStatu
    {
        public OutbreakStatu()
        {
            this.MonthlySummaries = new List<MonthlySummary>();
        }

        public int Id { get; set; }
        public string YesNo { get; set; }
        public virtual ICollection<MonthlySummary> MonthlySummaries { get; set; }
    }
}
