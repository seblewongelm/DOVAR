using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class testOutbreak
    {
        public int Id { get; set; }
        public Nullable<int> MonthlySummaryId { get; set; }
        public Nullable<int> ShapeId { get; set; }
        public Nullable<int> SpeciesId { get; set; }
    }
}
