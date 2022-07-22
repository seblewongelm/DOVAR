using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Publicbody
    {
        public Publicbody()
        {
            this.MonthlyReports = new List<MonthlyReport>();
            this.UserAccounts = new List<UserAccount>();
        }

        public int Id { get; set; }
        public int LocationId { get; set; }
        public string PublicbodyName { get; set; }
        public int PublicbodyTypeId { get; set; }
        public virtual Location Location { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
        public virtual PublicBodyType PublicBodyType { get; set; }
        public virtual ICollection<UserAccount> UserAccounts { get; set; }
    }
}
