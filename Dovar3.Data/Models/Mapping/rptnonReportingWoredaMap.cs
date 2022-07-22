using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptnonReportingWoredaMap : EntityTypeConfiguration<rptnonReportingWoreda>
    {
        public rptnonReportingWoredaMap()
        {
            // Primary Key
            this.HasKey(t => t.MonthName);

            // Properties
            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.MonthName)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.PublicbodyName)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptnonReportingWoredas");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.LocationTypeId).HasColumnName("LocationTypeId");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
        }
    }
}
