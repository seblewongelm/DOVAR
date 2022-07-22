using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Location
    {
        public Location()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
            this.Location1 = new List<Location>();
            this.MonthlyReports = new List<MonthlyReport>();
            this.MonthlyReports1 = new List<MonthlyReport>();
            this.MonthlyReports2 = new List<MonthlyReport>();
            this.Publicbodies = new List<Publicbody>();
        }

        public int Id { get; set; }
        public Nullable<int> ParentId { get; set; }
        public string LocationName { get; set; }
        public string LocationNameAmh { get; set; }
        public int LocationTypeId { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
        public virtual ICollection<Location> Location1 { get; set; }
        public virtual Location Location2 { get; set; }
        public virtual LocationType LocationType { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports1 { get; set; }
        public virtual ICollection<MonthlyReport> MonthlyReports2 { get; set; }
        public virtual ICollection<Publicbody> Publicbodies { get; set; }
    }
}
