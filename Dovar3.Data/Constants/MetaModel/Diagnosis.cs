using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Dovar3.Data.Models
{
    [MetadataType(typeof(DiagnosisMetadata))]
    public partial class Diagnosis
    {

        class DiagnosisMetadata
        {
            [Display(Name = "Diagnosis")]
            public string DiagnosisName { get; set; }
        }
    }
}
