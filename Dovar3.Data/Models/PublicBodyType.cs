using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class PublicBodyType
    {
        public PublicBodyType()
        {
            this.Publicbodies = new List<Publicbody>();
        }

        public int Id { get; set; }
        public string PublicBodyTypeName { get; set; }
        public virtual ICollection<Publicbody> Publicbodies { get; set; }
    }
}
