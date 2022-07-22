using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptVaccinatedByDiseaseSpecyMap : EntityTypeConfiguration<rptVaccinatedByDiseaseSpecy>
    {
        public rptVaccinatedByDiseaseSpecyMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Species, t.Disease, t.Id });

            // Properties
            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptVaccinatedByDiseaseSpecies");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
