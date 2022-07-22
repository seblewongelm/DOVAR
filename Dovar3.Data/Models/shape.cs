using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class shape
    {
        public int Id { get; set; }
        public Nullable<int> MonthlyReportId { get; set; }
        public Nullable<int> DetailOutbreakId { get; set; }
        public Nullable<int> ID_C { get; set; }
        public Nullable<int> ID_R { get; set; }
        public Nullable<int> ID_Z { get; set; }
        public Nullable<int> ID_W { get; set; }
        public string ISO { get; set; }
        public string Country { get; set; }
        public string Region { get; set; }
        public string Zone { get; set; }
        public string Woreda { get; set; }
        public string TYPE_3 { get; set; }
        public string ENGTYPE_3 { get; set; }
        public string NL_NAME_3 { get; set; }
        public string VARNAME_3 { get; set; }
        public System.Data.Spatial.DbGeometry GEOM { get; set; }
        public virtual MonthlyReport MonthlyReport { get; set; }
    }
}
