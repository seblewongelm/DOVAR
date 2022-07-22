using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptPerformanceSummarybyRegionMap : EntityTypeConfiguration<rptPerformanceSummarybyRegion>
    {
        public rptPerformanceSummarybyRegionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Region, t.Month });

            // Properties
            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.RVL)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptPerformanceSummarybyRegion");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.NoofWoredas).HasColumnName("NoofWoredas");
            this.Property(t => t.ReportRecieved).HasColumnName("ReportRecieved");
            this.Property(t => t.Date).HasColumnName("Date");
            this.Property(t => t.RVL).HasColumnName("RVL");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
        }
    }
}
