using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptReportingPerformanceMap : EntityTypeConfiguration<rptReportingPerformance>
    {
        public rptReportingPerformanceMap()
        {
            // Primary Key
            this.HasKey(t => t.Month);

            // Properties
            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.RegionalLab)
                .HasMaxLength(100);

            this.Property(t => t.RegionName)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptReportingPerformance");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.NoofReport).HasColumnName("NoofReport");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.WoredaCount).HasColumnName("WoredaCount");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.RegionalLab).HasColumnName("RegionalLab");
            this.Property(t => t.RegionName).HasColumnName("RegionName");
        }
    }
}
