using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class UserAccount
    {
        public UserAccount()
        {
            this.MonthlyReports = new List<MonthlyReport>();
            this.MonthlyReports1 = new List<MonthlyReport>();
            this.MonthlyReports2 = new List<MonthlyReport>();
            this.MonthlyReports3 = new List<MonthlyReport>();
            this.UserRoles = new List<UserRole>();
        }

        public int Id { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Salt { get; set; }
        public int PublicbodyId { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports1 { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports2 { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports3 { get; set; }
        public virtual Publicbody Publicbody { get; set; }
        public virtual ICollection<UserRole> UserRoles { get; set; }
    }
}
