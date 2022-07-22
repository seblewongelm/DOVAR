using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptReportingPerformancebyZone1Map : EntityTypeConfiguration<rptReportingPerformancebyZone1>
    {
        public rptReportingPerformancebyZone1Map()
        {
            // Primary Key
            this.HasKey(t => t.Month);

            // Properties
            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptReportingPerformancebyZone1");
            this.Property(t => t.ZoneId).HasColumnName("ZoneId");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.NoofWoredas).HasColumnName("NoofWoredas");
            this.Property(t => t.NoofReport).HasColumnName("NoofReport");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
