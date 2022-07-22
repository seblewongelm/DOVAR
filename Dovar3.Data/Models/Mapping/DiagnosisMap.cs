using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class DiagnosisMap : EntityTypeConfiguration<Diagnosis>
    {
        public DiagnosisMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.DiagnosisName)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Diagnosis");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.DiagnosisName).HasColumnName("DiagnosisName");
        }
    }
}
