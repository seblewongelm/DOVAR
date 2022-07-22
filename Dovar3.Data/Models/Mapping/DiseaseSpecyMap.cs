using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class DiseaseSpecyMap : EntityTypeConfiguration<DiseaseSpecy>
    {
        public DiseaseSpecyMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("DiseaseSpecies");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.DiseaseId).HasColumnName("DiseaseId");
            this.Property(t => t.SpeciesId).HasColumnName("SpeciesId");
        }
    }
}
