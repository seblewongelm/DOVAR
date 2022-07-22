using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(PublicbodyMetadata))]
    public partial class Publicbody
    {
        class PublicbodyMetadata
        {
            [Display(Name = "Location")]
            public int LocationId { get; set; }
            [Display(Name = "Name")]
            public string PublicbodyName { get; set; }
            [Display(Name = "Type")]
            public int PublicbodyTypeId { get; set; }
        }
    }
}
