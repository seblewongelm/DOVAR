using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(QualificationMetadata))]
    public partial class Qualification
    {
        class QualificationMetadata
        {
            [Display(Name = "Qualificaiton")]
            public string QualificationName { get; set; }
        }
    }
}