using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptnumberOfnonReportingWeredaMap : EntityTypeConfiguration<rptnumberOfnonReportingWereda>
    {
        public rptnumberOfnonReportingWeredaMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("rptnumberOfnonReportingWeredas");
            this.Property(t => t.numberOfnonReportingweredas).HasColumnName("numberOfnonReportingweredas");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
