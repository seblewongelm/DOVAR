using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class DiseaseSpecy
    {
        public int Id { get; set; }
        public int DiseaseId { get; set; }
        public int SpeciesId { get; set; }
    }
}
