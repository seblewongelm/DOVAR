using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptReportingPerformance1Map : EntityTypeConfiguration<rptReportingPerformance1>
    {
        public rptReportingPerformance1Map()
        {
            // Primary Key
            this.HasKey(t => t.Month);

            // Properties
            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.RegionName)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptReportingPerformance1");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.NoofReport).HasColumnName("NoofReport");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.WoredaCount).HasColumnName("WoredaCount");
            this.Property(t => t.RegionName).HasColumnName("RegionName");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
