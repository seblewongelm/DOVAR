using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class PublicbodyMap : EntityTypeConfiguration<Publicbody>
    {
        public PublicbodyMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.PublicbodyName)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Publicbody");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
            this.Property(t => t.PublicbodyTypeId).HasColumnName("PublicbodyTypeId");

            // Relationships
            this.HasRequired(t => t.Location)
                .WithMany(t => t.Publicbodies)
                .HasForeignKey(d => d.LocationId);
            this.HasRequired(t => t.PublicBodyType)
                .WithMany(t => t.Publicbodies)
                .HasForeignKey(d => d.PublicbodyTypeId);

        }
    }
}
