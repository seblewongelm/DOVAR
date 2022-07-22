using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptworedacountMap : EntityTypeConfiguration<rptworedacount>
    {
        public rptworedacountMap()
        {
            // Primary Key
            this.HasKey(t => new { t.LocationTypeId, t.RegionName, t.RegionId });

            // Properties
            this.Property(t => t.LocationTypeId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.RegionName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.RegionId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptworedacount");
            this.Property(t => t.LocationTypeId).HasColumnName("LocationTypeId");
            this.Property(t => t.WoredaCount).HasColumnName("WoredaCount");
            this.Property(t => t.RegionName).HasColumnName("RegionName");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
        }
    }
}
