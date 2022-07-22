using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptZeroReportbyWoredaMap : EntityTypeConfiguration<rptZeroReportbyWoreda>
    {
        public rptZeroReportbyWoredaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Year, t.Region });

            // Properties
            this.Property(t => t.Year)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.LocationName)
                .HasMaxLength(100);

            this.Property(t => t.CreatedBy)
                .HasMaxLength(50);

            this.Property(t => t.ReportSenderPhone)
                .HasMaxLength(30);

            this.Property(t => t.ApprovedBy)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptZeroReportbyWoreda");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.CreatedBy).HasColumnName("CreatedBy");
            this.Property(t => t.ReportSenderPhone).HasColumnName("ReportSenderPhone");
            this.Property(t => t.ApprovedBy).HasColumnName("ApprovedBy");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.ApprovedDate).HasColumnName("ApprovedDate");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.OutbreakStatusId).HasColumnName("OutbreakStatusId");
        }
    }
}
