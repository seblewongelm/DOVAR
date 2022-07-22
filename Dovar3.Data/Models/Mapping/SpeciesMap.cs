using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class SpeciesMap : EntityTypeConfiguration<Species>
    {
        public SpeciesMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Name)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Abbrevations)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Species");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Name).HasColumnName("Name");
            this.Property(t => t.Abbrevations).HasColumnName("Abbrevations");
        }
    }
}
