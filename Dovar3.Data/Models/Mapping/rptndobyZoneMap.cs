using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptndobyZoneMap : EntityTypeConfiguration<rptndobyZone>
    {
        public rptndobyZoneMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Zone, t.Disease, t.Species, t.Id, t.LocationName });

            // Properties
            this.Property(t => t.Zone)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptndobyZone");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
        }
    }
}
