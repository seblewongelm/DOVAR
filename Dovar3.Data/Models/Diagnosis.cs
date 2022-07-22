using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Diagnosis
    {
        public Diagnosis()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public string DiagnosisName { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
    }
}
