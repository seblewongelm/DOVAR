using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptobbyyearmonthworedaMap : EntityTypeConfiguration<rptobbyyearmonthworeda>
    {
        public rptobbyyearmonthworedaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Species, t.Disease, t.ReportYear, t.Woreda, t.Id, t.LocationName, t.ReportMonth });

            // Properties
            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Woreda)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptobbyyearmonthworeda");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Outbreak).HasColumnName("Outbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
