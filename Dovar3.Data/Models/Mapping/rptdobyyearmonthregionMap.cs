using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdobyyearmonthregionMap : EntityTypeConfiguration<rptdobyyearmonthregion>
    {
        public rptdobyyearmonthregionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Disease, t.species, t.ReportYear, t.Region, t.LocationName, t.Id });

            // Properties
            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Region)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptdobyyearmonthregion");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.species).HasColumnName("species");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Outbreak).HasColumnName("Outbreak");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
