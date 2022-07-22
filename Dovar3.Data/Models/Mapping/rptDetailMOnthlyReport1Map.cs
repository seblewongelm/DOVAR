using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptDetailMOnthlyReport1Map : EntityTypeConfiguration<rptDetailMOnthlyReport1>
    {
        public rptDetailMOnthlyReport1Map()
        {
            // Primary Key
            this.HasKey(t => new { t.ReportYear, t.ReportMonth, t.LocationId });

            // Properties
            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.RegionalLab)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Wereda)
                .HasMaxLength(100);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptDetailMOnthlyReport1");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.RegionalLab).HasColumnName("RegionalLab");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Wereda).HasColumnName("Wereda");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.RegionId).HasColumnName("RegionId");
        }
    }
}
