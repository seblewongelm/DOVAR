using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class rptWeredaVaccinationCarriedOut
    {
        public int Woreda { get; set; }
        public Nullable<int> Control { get; set; }
        public Nullable<int> Prophylaxis { get; set; }
        public string LocationName { get; set; }
        public int Id { get; set; }
    }
}
