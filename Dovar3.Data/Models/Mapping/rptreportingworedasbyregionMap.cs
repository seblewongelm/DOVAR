using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptreportingworedasbyregionMap : EntityTypeConfiguration<rptreportingworedasbyregion>
    {
        public rptreportingworedasbyregionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Id, t.ReportYear });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Month)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptreportingworedasbyregion");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Month).HasColumnName("Month");
        }
    }
}
