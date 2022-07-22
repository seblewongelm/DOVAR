using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class QualificationMap : EntityTypeConfiguration<Qualification>
    {
        public QualificationMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.QualificationName)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Qualification");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.QualificationName).HasColumnName("QualificationName");
        }
    }
}
