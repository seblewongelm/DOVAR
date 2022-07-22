using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdoDetailReportingMap : EntityTypeConfiguration<rptdoDetailReporting>
    {
        public rptdoDetailReportingMap()
        {
            // Primary Key
            this.HasKey(t => t.MonthName);

            // Properties
            this.Property(t => t.MonthName)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.RegionalLab)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptdoDetailReporting");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.RegionalLab).HasColumnName("RegionalLab");
            this.Property(t => t.Zone).HasColumnName("Zone");
        }
    }
}
