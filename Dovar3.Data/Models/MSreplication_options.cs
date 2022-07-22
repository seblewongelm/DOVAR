using System;
using System.Collections.Generic;

namespace Dovar3.Data.Models
{
    public partial class MSreplication_options
    {
        public string optname { get; set; }
        public bool value { get; set; }
        public int major_version { get; set; }
        public int minor_version { get; set; }
        public int revision { get; set; }
        public int install_failures { get; set; }
    }
}
