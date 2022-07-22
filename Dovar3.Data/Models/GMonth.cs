using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class GMonth
    {
        public GMonth()
        {
            this.MonthlyReports = new List<MonthlyReport>();
        }

        public int Id { get; set; }
        public string MonthName { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
    }
}
