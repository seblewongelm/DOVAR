using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class ReportYesNo
    {
        public ReportYesNo()
        {
            this.MonthlyReports = new List<MonthlyReport>();
        }

        public int Id { get; set; }
        public string YesNo { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
    }
}
