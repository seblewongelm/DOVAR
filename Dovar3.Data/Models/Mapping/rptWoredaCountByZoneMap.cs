using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptWoredaCountByZoneMap : EntityTypeConfiguration<rptWoredaCountByZone>
    {
        public rptWoredaCountByZoneMap()
        {
            // Primary Key
            this.HasKey(t => new { t.LocationTypeId, t.ZoneId, t.Zone, t.Region });

            // Properties
            this.Property(t => t.LocationTypeId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ZoneId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Zone)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptWoredaCountByZone");
            this.Property(t => t.LocationTypeId).HasColumnName("LocationTypeId");
            this.Property(t => t.WoredaCount).HasColumnName("WoredaCount");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Region).HasColumnName("Region");
        }
    }
}
