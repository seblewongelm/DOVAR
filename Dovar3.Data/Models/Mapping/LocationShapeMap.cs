using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class LocationShapeMap : EntityTypeConfiguration<LocationShape>
    {
        public LocationShapeMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .HasMaxLength(100);

            this.Property(t => t.LocationNameAmh)
                .HasMaxLength(100);

            this.Property(t => t.Code)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("LocationShape");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ParentId).HasColumnName("ParentId");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.LocationNameAmh).HasColumnName("LocationNameAmh");
            this.Property(t => t.LocationTypeId).HasColumnName("LocationTypeId");
            this.Property(t => t.Code).HasColumnName("Code");
            this.Property(t => t.ID_R).HasColumnName("ID_R");
        }
    }
}
