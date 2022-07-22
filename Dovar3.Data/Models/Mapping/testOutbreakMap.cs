using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class testOutbreakMap : EntityTypeConfiguration<testOutbreak>
    {
        public testOutbreakMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("testOutbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.MonthlySummaryId).HasColumnName("MonthlySummaryId");
            this.Property(t => t.ShapeId).HasColumnName("ShapeId");
            this.Property(t => t.SpeciesId).HasColumnName("SpeciesId");
        }
    }
}
