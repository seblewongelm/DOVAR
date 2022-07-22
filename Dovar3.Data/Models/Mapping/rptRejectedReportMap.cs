using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptRejectedReportMap : EntityTypeConfiguration<rptRejectedReport>
    {
        public rptRejectedReportMap()
        {
            // Primary Key
            this.HasKey(t => new { t.IsReportAccepted, t.ReportYear, t.ReportMonth, t.LocationId });

            // Properties
            this.Property(t => t.IsReportAccepted)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.RegionalLab)
                .HasMaxLength(100);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptRejectedReport");
            this.Property(t => t.IsReportAccepted).HasColumnName("IsReportAccepted");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.RegionalLab).HasColumnName("RegionalLab");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
        }
    }
}
