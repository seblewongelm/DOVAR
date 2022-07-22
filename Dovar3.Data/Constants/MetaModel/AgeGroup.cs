using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace Dovar3.Data.Models
{
    [MetadataType(typeof(AgeGroupMetadata))]
    public partial class AgeGroup
    {
        class AgeGroupMetadata
        {
            [Display(Name="Age Group")]
            public string AgeGroupName { get; set; }
        }
    }
}

