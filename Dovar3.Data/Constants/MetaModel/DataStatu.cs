using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(DataStatuMetadata))]
    public partial class DataStatu
    {

        class DataStatuMetadata
        {
            [Display(Name="Status")]
            public string StatusName { get; set; }
        }
    }
}
