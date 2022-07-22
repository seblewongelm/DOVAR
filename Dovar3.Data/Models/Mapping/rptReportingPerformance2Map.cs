using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptReportingPerformance2Map : EntityTypeConfiguration<rptReportingPerformance2>
    {
        public rptReportingPerformance2Map()
        {
            // Primary Key
            this.HasKey(t => new { t.Region, t.LocationId, t.Month });

            // Properties
            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptReportingPerformance2");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.NoOfReport).HasColumnName("NoOfReport");
            this.Property(t => t.WoredaCount).HasColumnName("WoredaCount");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.Month).HasColumnName("Month");
        }
    }
}
