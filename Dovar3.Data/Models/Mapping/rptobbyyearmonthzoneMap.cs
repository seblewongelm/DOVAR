using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptobbyyearmonthzoneMap : EntityTypeConfiguration<rptobbyyearmonthzone>
    {
        public rptobbyyearmonthzoneMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Species, t.Disease, t.ReportYear, t.Zone, t.Id, t.LocationName, t.ReportMonth });

            // Properties
            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Zone)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptobbyyearmonthzone");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.outbreak).HasColumnName("outbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
