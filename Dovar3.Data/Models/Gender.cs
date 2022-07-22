using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class Gender
    {
        public Gender()
        {
            this.DetailOutbreaks = new List<DetailOutbreak>();
        }

        public int Id { get; set; }
        public string GenderName { get; set; }
        public virtual ICollection<DetailOutbreak> DetailOutbreaks { get; set; }
    }
}
