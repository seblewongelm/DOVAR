using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class LocationMap : EntityTypeConfiguration<Location>
    {
        public LocationMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.LocationNameAmh)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Location");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ParentId).HasColumnName("ParentId");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.LocationNameAmh).HasColumnName("LocationNameAmh");
            this.Property(t => t.LocationTypeId).HasColumnName("LocationTypeId");

            // Relationships
            this.HasOptional(t => t.Location2)
                .WithMany(t => t.Location1)
                .HasForeignKey(d => d.ParentId);
            this.HasRequired(t => t.LocationType)
                .WithMany(t => t.Locations)
                .HasForeignKey(d => d.LocationTypeId);

        }
    }
}
