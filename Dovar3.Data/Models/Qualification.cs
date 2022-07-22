using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Qualification
    {
        public Qualification()
        {
            this.MonthlyReports = new List<MonthlyReport>();
        }

        public int Id { get; set; }
        public string QualificationName { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
    }
}
