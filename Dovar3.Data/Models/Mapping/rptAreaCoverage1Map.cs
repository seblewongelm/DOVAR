using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptAreaCoverage1Map : EntityTypeConfiguration<rptAreaCoverage1>
    {
        public rptAreaCoverage1Map()
        {
            // Primary Key
            this.HasKey(t => t.Month);

            // Properties
            this.Property(t => t.RegionName)
                .HasMaxLength(100);

            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.RegionalLab)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptAreaCoverage1");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.RegionName).HasColumnName("RegionName");
            this.Property(t => t.TotalWoreda).HasColumnName("TotalWoreda");
            this.Property(t => t.ReportingWoredas).HasColumnName("ReportingWoredas");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.RegionalLab).HasColumnName("RegionalLab");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
